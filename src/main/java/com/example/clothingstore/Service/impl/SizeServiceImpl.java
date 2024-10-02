package com.example.clothingstore.Service.impl;

import com.example.clothingstore.Service.SizeService;
import com.example.clothingstore.dto.SizeDto;
import com.example.clothingstore.entity.Size;
import com.example.clothingstore.mapper.SizeMapper;
import com.example.clothingstore.repository.SizeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SizeServiceImpl implements SizeService {

    private final SizeRepository sizeRepository;
    private final SizeMapper sizeMapper;

    @Override
    public List<SizeDto> getAll() {
        return sizeRepository
                .findAll()
                .stream()
                .map(sizeMapper)
                .toList();
    }
}
