package com.ssm.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class HappyFarmLandinfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public HappyFarmLandinfoExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andLandidIsNull() {
            addCriterion("landID is null");
            return (Criteria) this;
        }

        public Criteria andLandidIsNotNull() {
            addCriterion("landID is not null");
            return (Criteria) this;
        }

        public Criteria andLandidEqualTo(Integer value) {
            addCriterion("landID =", value, "landid");
            return (Criteria) this;
        }

        public Criteria andLandidNotEqualTo(Integer value) {
            addCriterion("landID <>", value, "landid");
            return (Criteria) this;
        }

        public Criteria andLandidGreaterThan(Integer value) {
            addCriterion("landID >", value, "landid");
            return (Criteria) this;
        }

        public Criteria andLandidGreaterThanOrEqualTo(Integer value) {
            addCriterion("landID >=", value, "landid");
            return (Criteria) this;
        }

        public Criteria andLandidLessThan(Integer value) {
            addCriterion("landID <", value, "landid");
            return (Criteria) this;
        }

        public Criteria andLandidLessThanOrEqualTo(Integer value) {
            addCriterion("landID <=", value, "landid");
            return (Criteria) this;
        }

        public Criteria andLandidIn(List<Integer> values) {
            addCriterion("landID in", values, "landid");
            return (Criteria) this;
        }

        public Criteria andLandidNotIn(List<Integer> values) {
            addCriterion("landID not in", values, "landid");
            return (Criteria) this;
        }

        public Criteria andLandidBetween(Integer value1, Integer value2) {
            addCriterion("landID between", value1, value2, "landid");
            return (Criteria) this;
        }

        public Criteria andLandidNotBetween(Integer value1, Integer value2) {
            addCriterion("landID not between", value1, value2, "landid");
            return (Criteria) this;
        }

        public Criteria andLandnameIsNull() {
            addCriterion("landName is null");
            return (Criteria) this;
        }

        public Criteria andLandnameIsNotNull() {
            addCriterion("landName is not null");
            return (Criteria) this;
        }

        public Criteria andLandnameEqualTo(String value) {
            addCriterion("landName =", value, "landname");
            return (Criteria) this;
        }

        public Criteria andLandnameNotEqualTo(String value) {
            addCriterion("landName <>", value, "landname");
            return (Criteria) this;
        }

        public Criteria andLandnameGreaterThan(String value) {
            addCriterion("landName >", value, "landname");
            return (Criteria) this;
        }

        public Criteria andLandnameGreaterThanOrEqualTo(String value) {
            addCriterion("landName >=", value, "landname");
            return (Criteria) this;
        }

        public Criteria andLandnameLessThan(String value) {
            addCriterion("landName <", value, "landname");
            return (Criteria) this;
        }

        public Criteria andLandnameLessThanOrEqualTo(String value) {
            addCriterion("landName <=", value, "landname");
            return (Criteria) this;
        }

        public Criteria andLandnameLike(String value) {
            addCriterion("landName like", value, "landname");
            return (Criteria) this;
        }

        public Criteria andLandnameNotLike(String value) {
            addCriterion("landName not like", value, "landname");
            return (Criteria) this;
        }

        public Criteria andLandnameIn(List<String> values) {
            addCriterion("landName in", values, "landname");
            return (Criteria) this;
        }

        public Criteria andLandnameNotIn(List<String> values) {
            addCriterion("landName not in", values, "landname");
            return (Criteria) this;
        }

        public Criteria andLandnameBetween(String value1, String value2) {
            addCriterion("landName between", value1, value2, "landname");
            return (Criteria) this;
        }

        public Criteria andLandnameNotBetween(String value1, String value2) {
            addCriterion("landName not between", value1, value2, "landname");
            return (Criteria) this;
        }

        public Criteria andLandpriceIsNull() {
            addCriterion("landPrice is null");
            return (Criteria) this;
        }

        public Criteria andLandpriceIsNotNull() {
            addCriterion("landPrice is not null");
            return (Criteria) this;
        }

        public Criteria andLandpriceEqualTo(Double value) {
            addCriterion("landPrice =", value, "landprice");
            return (Criteria) this;
        }

        public Criteria andLandpriceNotEqualTo(Double value) {
            addCriterion("landPrice <>", value, "landprice");
            return (Criteria) this;
        }

        public Criteria andLandpriceGreaterThan(Double value) {
            addCriterion("landPrice >", value, "landprice");
            return (Criteria) this;
        }

        public Criteria andLandpriceGreaterThanOrEqualTo(Double value) {
            addCriterion("landPrice >=", value, "landprice");
            return (Criteria) this;
        }

        public Criteria andLandpriceLessThan(Double value) {
            addCriterion("landPrice <", value, "landprice");
            return (Criteria) this;
        }

        public Criteria andLandpriceLessThanOrEqualTo(Double value) {
            addCriterion("landPrice <=", value, "landprice");
            return (Criteria) this;
        }

        public Criteria andLandpriceIn(List<Double> values) {
            addCriterion("landPrice in", values, "landprice");
            return (Criteria) this;
        }

        public Criteria andLandpriceNotIn(List<Double> values) {
            addCriterion("landPrice not in", values, "landprice");
            return (Criteria) this;
        }

        public Criteria andLandpriceBetween(Double value1, Double value2) {
            addCriterion("landPrice between", value1, value2, "landprice");
            return (Criteria) this;
        }

        public Criteria andLandpriceNotBetween(Double value1, Double value2) {
            addCriterion("landPrice not between", value1, value2, "landprice");
            return (Criteria) this;
        }

        public Criteria andLandimgIsNull() {
            addCriterion("landImg is null");
            return (Criteria) this;
        }

        public Criteria andLandimgIsNotNull() {
            addCriterion("landImg is not null");
            return (Criteria) this;
        }

        public Criteria andLandimgEqualTo(String value) {
            addCriterion("landImg =", value, "landimg");
            return (Criteria) this;
        }

        public Criteria andLandimgNotEqualTo(String value) {
            addCriterion("landImg <>", value, "landimg");
            return (Criteria) this;
        }

        public Criteria andLandimgGreaterThan(String value) {
            addCriterion("landImg >", value, "landimg");
            return (Criteria) this;
        }

        public Criteria andLandimgGreaterThanOrEqualTo(String value) {
            addCriterion("landImg >=", value, "landimg");
            return (Criteria) this;
        }

        public Criteria andLandimgLessThan(String value) {
            addCriterion("landImg <", value, "landimg");
            return (Criteria) this;
        }

        public Criteria andLandimgLessThanOrEqualTo(String value) {
            addCriterion("landImg <=", value, "landimg");
            return (Criteria) this;
        }

        public Criteria andLandimgLike(String value) {
            addCriterion("landImg like", value, "landimg");
            return (Criteria) this;
        }

        public Criteria andLandimgNotLike(String value) {
            addCriterion("landImg not like", value, "landimg");
            return (Criteria) this;
        }

        public Criteria andLandimgIn(List<String> values) {
            addCriterion("landImg in", values, "landimg");
            return (Criteria) this;
        }

        public Criteria andLandimgNotIn(List<String> values) {
            addCriterion("landImg not in", values, "landimg");
            return (Criteria) this;
        }

        public Criteria andLandimgBetween(String value1, String value2) {
            addCriterion("landImg between", value1, value2, "landimg");
            return (Criteria) this;
        }

        public Criteria andLandimgNotBetween(String value1, String value2) {
            addCriterion("landImg not between", value1, value2, "landimg");
            return (Criteria) this;
        }

        public Criteria andLandmsIsNull() {
            addCriterion("landMs is null");
            return (Criteria) this;
        }

        public Criteria andLandmsIsNotNull() {
            addCriterion("landMs is not null");
            return (Criteria) this;
        }

        public Criteria andLandmsEqualTo(String value) {
            addCriterion("landMs =", value, "landms");
            return (Criteria) this;
        }

        public Criteria andLandmsNotEqualTo(String value) {
            addCriterion("landMs <>", value, "landms");
            return (Criteria) this;
        }

        public Criteria andLandmsGreaterThan(String value) {
            addCriterion("landMs >", value, "landms");
            return (Criteria) this;
        }

        public Criteria andLandmsGreaterThanOrEqualTo(String value) {
            addCriterion("landMs >=", value, "landms");
            return (Criteria) this;
        }

        public Criteria andLandmsLessThan(String value) {
            addCriterion("landMs <", value, "landms");
            return (Criteria) this;
        }

        public Criteria andLandmsLessThanOrEqualTo(String value) {
            addCriterion("landMs <=", value, "landms");
            return (Criteria) this;
        }

        public Criteria andLandmsLike(String value) {
            addCriterion("landMs like", value, "landms");
            return (Criteria) this;
        }

        public Criteria andLandmsNotLike(String value) {
            addCriterion("landMs not like", value, "landms");
            return (Criteria) this;
        }

        public Criteria andLandmsIn(List<String> values) {
            addCriterion("landMs in", values, "landms");
            return (Criteria) this;
        }

        public Criteria andLandmsNotIn(List<String> values) {
            addCriterion("landMs not in", values, "landms");
            return (Criteria) this;
        }

        public Criteria andLandmsBetween(String value1, String value2) {
            addCriterion("landMs between", value1, value2, "landms");
            return (Criteria) this;
        }

        public Criteria andLandmsNotBetween(String value1, String value2) {
            addCriterion("landMs not between", value1, value2, "landms");
            return (Criteria) this;
        }

        public Criteria andLandareaIsNull() {
            addCriterion("landArea is null");
            return (Criteria) this;
        }

        public Criteria andLandareaIsNotNull() {
            addCriterion("landArea is not null");
            return (Criteria) this;
        }

        public Criteria andLandareaEqualTo(String value) {
            addCriterion("landArea =", value, "landarea");
            return (Criteria) this;
        }

        public Criteria andLandareaNotEqualTo(String value) {
            addCriterion("landArea <>", value, "landarea");
            return (Criteria) this;
        }

        public Criteria andLandareaGreaterThan(String value) {
            addCriterion("landArea >", value, "landarea");
            return (Criteria) this;
        }

        public Criteria andLandareaGreaterThanOrEqualTo(String value) {
            addCriterion("landArea >=", value, "landarea");
            return (Criteria) this;
        }

        public Criteria andLandareaLessThan(String value) {
            addCriterion("landArea <", value, "landarea");
            return (Criteria) this;
        }

        public Criteria andLandareaLessThanOrEqualTo(String value) {
            addCriterion("landArea <=", value, "landarea");
            return (Criteria) this;
        }

        public Criteria andLandareaLike(String value) {
            addCriterion("landArea like", value, "landarea");
            return (Criteria) this;
        }

        public Criteria andLandareaNotLike(String value) {
            addCriterion("landArea not like", value, "landarea");
            return (Criteria) this;
        }

        public Criteria andLandareaIn(List<String> values) {
            addCriterion("landArea in", values, "landarea");
            return (Criteria) this;
        }

        public Criteria andLandareaNotIn(List<String> values) {
            addCriterion("landArea not in", values, "landarea");
            return (Criteria) this;
        }

        public Criteria andLandareaBetween(String value1, String value2) {
            addCriterion("landArea between", value1, value2, "landarea");
            return (Criteria) this;
        }

        public Criteria andLandareaNotBetween(String value1, String value2) {
            addCriterion("landArea not between", value1, value2, "landarea");
            return (Criteria) this;
        }

        public Criteria andLanddateIsNull() {
            addCriterion("landDate is null");
            return (Criteria) this;
        }

        public Criteria andLanddateIsNotNull() {
            addCriterion("landDate is not null");
            return (Criteria) this;
        }

        public Criteria andLanddateEqualTo(Date value) {
            addCriterionForJDBCDate("landDate =", value, "landdate");
            return (Criteria) this;
        }

        public Criteria andLanddateNotEqualTo(Date value) {
            addCriterionForJDBCDate("landDate <>", value, "landdate");
            return (Criteria) this;
        }

        public Criteria andLanddateGreaterThan(Date value) {
            addCriterionForJDBCDate("landDate >", value, "landdate");
            return (Criteria) this;
        }

        public Criteria andLanddateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("landDate >=", value, "landdate");
            return (Criteria) this;
        }

        public Criteria andLanddateLessThan(Date value) {
            addCriterionForJDBCDate("landDate <", value, "landdate");
            return (Criteria) this;
        }

        public Criteria andLanddateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("landDate <=", value, "landdate");
            return (Criteria) this;
        }

        public Criteria andLanddateIn(List<Date> values) {
            addCriterionForJDBCDate("landDate in", values, "landdate");
            return (Criteria) this;
        }

        public Criteria andLanddateNotIn(List<Date> values) {
            addCriterionForJDBCDate("landDate not in", values, "landdate");
            return (Criteria) this;
        }

        public Criteria andLanddateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("landDate between", value1, value2, "landdate");
            return (Criteria) this;
        }

        public Criteria andLanddateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("landDate not between", value1, value2, "landdate");
            return (Criteria) this;
        }

        public Criteria andLandsizeIsNull() {
            addCriterion("landSize is null");
            return (Criteria) this;
        }

        public Criteria andLandsizeIsNotNull() {
            addCriterion("landSize is not null");
            return (Criteria) this;
        }

        public Criteria andLandsizeEqualTo(String value) {
            addCriterion("landSize =", value, "landsize");
            return (Criteria) this;
        }

        public Criteria andLandsizeNotEqualTo(String value) {
            addCriterion("landSize <>", value, "landsize");
            return (Criteria) this;
        }

        public Criteria andLandsizeGreaterThan(String value) {
            addCriterion("landSize >", value, "landsize");
            return (Criteria) this;
        }

        public Criteria andLandsizeGreaterThanOrEqualTo(String value) {
            addCriterion("landSize >=", value, "landsize");
            return (Criteria) this;
        }

        public Criteria andLandsizeLessThan(String value) {
            addCriterion("landSize <", value, "landsize");
            return (Criteria) this;
        }

        public Criteria andLandsizeLessThanOrEqualTo(String value) {
            addCriterion("landSize <=", value, "landsize");
            return (Criteria) this;
        }

        public Criteria andLandsizeLike(String value) {
            addCriterion("landSize like", value, "landsize");
            return (Criteria) this;
        }

        public Criteria andLandsizeNotLike(String value) {
            addCriterion("landSize not like", value, "landsize");
            return (Criteria) this;
        }

        public Criteria andLandsizeIn(List<String> values) {
            addCriterion("landSize in", values, "landsize");
            return (Criteria) this;
        }

        public Criteria andLandsizeNotIn(List<String> values) {
            addCriterion("landSize not in", values, "landsize");
            return (Criteria) this;
        }

        public Criteria andLandsizeBetween(String value1, String value2) {
            addCriterion("landSize between", value1, value2, "landsize");
            return (Criteria) this;
        }

        public Criteria andLandsizeNotBetween(String value1, String value2) {
            addCriterion("landSize not between", value1, value2, "landsize");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}