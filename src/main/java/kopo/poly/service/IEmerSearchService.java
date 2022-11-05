package kopo.poly.service;

import kopo.poly.dto.SearchDTO;

import java.util.List;

public interface IEmerSearchService {

    List<SearchDTO> EmerSearch() throws Exception;
}
