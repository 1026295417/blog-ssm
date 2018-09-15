package xyz.stackoverflow.blog.pojo.vo;

import xyz.stackoverflow.blog.pojo.entity.Blog;

import java.io.Serializable;
import java.util.Date;

public class BlogVO implements Serializable {
    private String title;
    private String blogMd;
    private String blogHtml;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBlogMd() {
        return blogMd;
    }

    public void setBlogMd(String blogMd) {
        this.blogMd = blogMd;
    }

    public String getBlogHtml() {
        return blogHtml;
    }

    public void setBlogHtml(String blogHtml) {
        this.blogHtml = blogHtml;
    }

    public Blog toBlog(){
        Blog blog = new Blog();
        blog.setBlogHtml(blogHtml);
        blog.setBlogMd(blogMd);
        blog.setTitle(title);
        blog.setDate(new Date());
        return blog;
    }
}
