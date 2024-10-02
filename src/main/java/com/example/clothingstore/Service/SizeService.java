package com.example.clothingstore.Service;

import com.example.clothingstore.dto.SizeDto;
import com.example.clothingstore.entity.Size;

import java.util.List;

public interface SizeService {

    List<SizeDto> getAll();
}
