package xyz.stackoverflow.blog.dao;

import org.springframework.stereotype.Repository;
import xyz.stackoverflow.blog.pojo.entity.Comment;

import java.util.List;

/**
 * 评论表DAO
 *
 * @author 凉衫薄
 */
@Repository
public interface CommentDao {

    int insertComment(Comment comment);
    List<Comment> getCommentByArticleId(String articleId);
    int deleteCommentById(String id);
    List<Comment> getAllComment();
    Comment getCommentById(String id);
    int getCommentCountByArticleId(String articleId);
    int commentReview(Comment comment);
}