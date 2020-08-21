package com.example.somethies.repos;

import com.example.somethies.domain.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

//позволяет получить полный список полей или по идентификатору
public interface MessageRepo extends CrudRepository<Message, Long> {

    List<Message> findByTag(String tag);

}
