package com.senyer.senyer_opc.dto;

import lombok.Data;

@Data
public class Data_B {
  private String name;
  private Object value;
  private String unit;
}
//A：变量+数据、B：变量+数据+单位、C：变量+数据+时间+单位、D：变量+数据+时间。。。。。。