package com.example.clothingstore.mapper;

import com.example.clothingstore.dto.SizeDto;
import com.example.clothingstore.entity.Size;
import org.springframework.stereotype.Service;

import java.util.function.Function;

@Service
public class SizeMapper implements Function<Size, SizeDto> {
    @Override
    public SizeDto apply(Size size) {
        return SizeDto.builder()
                .id(size.getId())
                .name(size.getName())
                .build();
    }
}
