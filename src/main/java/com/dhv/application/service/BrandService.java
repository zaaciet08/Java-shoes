package com.dhv.application.service;

import com.dhv.application.entity.Brand;
import com.dhv.application.model.request.CreateBrandRequest;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BrandService {
    Page<Brand> adminGetListBrands(String id, String name, String status, Integer page);

    List<Brand> getListBrand();

    Brand createBrand(CreateBrandRequest createBrandRequest);

    void updateBrand(CreateBrandRequest createBrandRequest, Long id);

    void deleteBrand(long id);

    Brand getBrandById(long id);

    long getCountBrands();
}
