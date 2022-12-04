package kopo.poly.service;

import kopo.poly.dto.ConDTO;

import java.util.List;

public interface IConService {

    String apiURL = "https://apis.data.go.kr/B552657/HsptlAsembySearchService/getHsptlBassInfoInqire?serviceKey=7Zq8vD1J3swTyNa%2F00rDCrxp8pzBRc8hqkooc1KVq%2Fwtt0LlAb%2FyvjwDFUMwcK9jkgcKPI9jTAhG6oiaSV1%2BSA%3D%3D&pageNo=10&numOfRows=1";

    // 병‧의원별 기본정보 조회 API를 호출하여 병‧의원별 기본정보 결과 받아오기
/*    ConDTO getCon(ConDTO cDTO) throws Exception;*/


    List<ConDTO> getSearchCon(List<String> general, String cityParam, String districtParam, String HptorClnParam, String CODE_MSTParam,String dayParam, String hosnameParam, String pageNoParam, String ordParam, String numOfRowsParam, String telParam) throws Exception; //병의원별 목록정보 조회
}
