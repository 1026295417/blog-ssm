var viewModel;

$(function () {

    viewModel = new viewModel();
    ko.applyBindings(viewModel);

    var url = window.location.pathname;

    loadSideInfo();
    loadArticle(url);
});

function viewModel() {
    var self = this;

    self.initData = {
        sideInfo: {
            headUrl: '',
            nickname: '',
            signature: ''
        },
        article: {
            title: '',
            date: '',
            nickname: '',
            categoryName: ''
        }
    }

    self.article = ko.observable(self.initData.article);
    self.sideInfo = ko.observable(self.initData.sideInfo);
}

function loadSideInfo() {
    $.ajax({
        url: "/api/sideinfo",
        type: "get",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            if (data.status == 0) {
                var sideInfo = data.data;
                viewModel.sideInfo(sideInfo);
            } else {
            }
        },
        error: function (data) {
        }
    });
}

function loadArticle(url) {
    $.ajax({
        url: "/api" + url,
        type: "get",
        dataType: "json",
        success: function (data) {
            if (data.status == 0) {
                viewModel.article(data.data);
                editormd.markdownToHTML("editormd-view", {
                    markdown: viewModel.article().articleMd,
                });
            }

        },
        error: function (data) {

        }
    });

}