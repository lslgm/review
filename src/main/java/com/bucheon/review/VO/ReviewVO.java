package com.bucheon.review.VO;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ReviewVO {

    private  int rno;
    private  int sno;
    private String rsubject;
    private String rcontent;
    private int rgrade;

    //추가 join
    private  String sname;
}
