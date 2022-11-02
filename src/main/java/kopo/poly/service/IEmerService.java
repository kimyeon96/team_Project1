package kopo.poly.service;

import kopo.poly.dto.EmerDTO;
import kopo.poly.dto.EmerRowDTO;

import java.io.IOException;
import java.util.List;

public interface IEmerService {

    List<EmerRowDTO> getEmer() throws Exception;
}

