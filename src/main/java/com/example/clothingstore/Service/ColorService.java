package com.example.clothingstore.Service;

import com.example.clothingstore.dto.ColorDto;
import com.example.clothingstore.entity.Color;

import java.util.List;

public interface ColorService {

    List<ColorDto> getAll();
}
