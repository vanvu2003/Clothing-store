package com.example.clothingstore.mapper;

import com.example.clothingstore.dto.ColorDto;
import com.example.clothingstore.entity.Color;
import org.springframework.stereotype.Service;

import java.util.function.Function;

@Service
public class ColorMapper implements Function<Color, ColorDto> {
    @Override
    public ColorDto apply(Color color) {
        return ColorDto.builder()
                .id(color.getId())
                .name(color.getName())
                .build();
    }
}
