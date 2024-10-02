package com.example.clothingstore.Service.impl;

import com.example.clothingstore.Service.ColorService;
import com.example.clothingstore.dto.ColorDto;
import com.example.clothingstore.entity.Color;
import com.example.clothingstore.mapper.ColorMapper;
import com.example.clothingstore.repository.ColorRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ColorServiceImpl implements ColorService {

    private final ColorRepository colorRepository;
    private final ColorMapper colorMapper;

    @Override
    public List<ColorDto> getAll() {
        return colorRepository
                .findAll()
                .stream()
                .map(colorMapper)
                .toList();
    }
}
