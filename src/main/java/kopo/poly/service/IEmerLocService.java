package kopo.poly.service;

import kopo.poly.dto.EmerLocDTO;
import kopo.poly.dto.EmerLocRowDTO;


import java.util.List;

public interface IEmerLocService {
    List<EmerLocRowDTO> getLoc() throws Exception;
}//s