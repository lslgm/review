package com.bucheon.review.VO;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ResultVO {
    private  int rno;
    private int sno;
    private String rsubject;
    private String rcontent;
    private int rgrade;

    private String sname;
    private String sphone;
}
