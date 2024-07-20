package com.instrument.shop.util;

import com.instrument.shop.core.pagination.Sort;
import jakarta.inject.Singleton;

import java.util.List;
import java.util.Map;

@Singleton
public class JpqlUtil {
    private final List<String> keywords = List.of("SELECT", "CREATE", "DROP", "UPDATE", "DELETE", "ALTER", "FROM", "UNSORTED");

    public String getValidJpqlPart(String jpqlPart) {
        String jpqlUpper = jpqlPart.toUpperCase();
        for (String keyword : keywords) {
            if (jpqlUpper.contains(keyword)) {
                return "";
            }
        }

        return jpqlPart;
    }

    public String getValidOrderBy(String orderBy) {
        String validOrderBy = getValidJpqlPart(orderBy);
        return validOrderBy.isEmpty() ? validOrderBy : " order by " + validOrderBy;
    }

    public String getValidFilter(Map<String, Object> filterData, String columnPrefix) {
        StringBuilder filterPart = new StringBuilder();
        for (Map.Entry<String, Object> entry : filterData.entrySet()) {
            String key = entry.getKey();

            filterPart.append(" and lower(")
                    .append(columnPrefix)
                    .append(".")
                    .append(key)
                    .append(") like lower(:")
                    .append(key)
                    .append(")");
        }
        return getValidJpqlPart(filterPart.toString());
    }

    public String getValidUserFilter(Map<String, Object> filterData, String columnPrefix) {
        StringBuilder filterPart = new StringBuilder();
        for (Map.Entry<String, Object> entry : filterData.entrySet()) {
            String key = entry.getKey();

            filterPart.append(" and lower(");
            if (key.equals("role")) {
                filterPart.append("cast(")
                        .append(columnPrefix)
                        .append(".")
                        .append(key)
                        .append(" as string)");
            } else {
                filterPart.append(columnPrefix)
                        .append(".")
                        .append(key);
            }
            filterPart.append(") like lower(:")
                    .append(key)
                    .append(")");
        }
        return getValidJpqlPart(filterPart.toString());
    }

    public String getValidAInstrumentFilter(Map<String, Object> filterData, String columnPrefix) {
        StringBuilder filterPart = new StringBuilder();
        for (Map.Entry<String, Object> entry : filterData.entrySet()) {
            String key = entry.getKey();

            filterPart.append(" and ");
            if (key.equals("quantityStart")) {
                filterPart.append(columnPrefix)
                        .append(".quantity >=");

            } else if (key.equals("quantityEnd")) {
                filterPart.append(columnPrefix)
                        .append(".quantity <=");

            } else if (key.equals("priceStart")) {
                filterPart.append(columnPrefix)
                        .append(".price >=");

            } else if (key.equals("priceEnd")) {
                filterPart.append(columnPrefix)
                        .append(".price <=");

            } else {
                filterPart.append("lower(");
                if (key.equals("type")) {
                    filterPart.append(columnPrefix)
                            .append(".type.name");
                } else {
                    filterPart.append(columnPrefix)
                            .append(".")
                            .append(key);
                }
                filterPart.append(") like lower(:")
                        .append(key)
                        .append(")");
                continue;
            }
            filterPart.append(" :")
                    .append(key);
        }
        return getValidJpqlPart(filterPart.toString());
    }

    public String getValidBInstrumentFilter(Map<String, Object> filterData, String columnPrefix) {
        StringBuilder filterPart = new StringBuilder();
        for (Map.Entry<String, Object> entry : filterData.entrySet()) {
            String key = entry.getKey();

            filterPart.append(" and ");
            if (key.equals("priceStart")) {
                filterPart.append(columnPrefix)
                        .append(".price >=");

            } else if (key.equals("priceEnd")) {
                filterPart.append(columnPrefix)
                        .append(".price <=");

            } else if (key.equals("ownedStart")) {
                filterPart.append(columnPrefix)
                        .append(".owned >=");

            } else if (key.equals("ownedEnd")) {
                filterPart.append(columnPrefix)
                        .append(".owned <=");

            } else if (key.equals("purchasedStart")) {
                filterPart.append(columnPrefix)
                        .append(".purchased >=");

            } else if (key.equals("purchasedEnd")) {
                filterPart.append(columnPrefix)
                        .append(".purchased <=");

            } else {
                filterPart.append("lower(")
                        .append(columnPrefix)
                        .append(".")
                        .append(key)
                        .append(") like lower(:")
                        .append(key)
                        .append(")");
                continue;
            }
            filterPart.append(" :")
                    .append(key);
        }
        return getValidJpqlPart(filterPart.toString());
    }

    public String getValidReceiptFilter(Map<String, Object> filterData, String columnPrefix) {
        StringBuilder filterPart = new StringBuilder();
        for (Map.Entry<String, Object> entry : filterData.entrySet()) {
            String key = entry.getKey();

            filterPart.append(" and ");
            if (key.equals("code")) {
                filterPart.append("lower(")
                        .append(columnPrefix)
                        .append(".")
                        .append(key)
                        .append(") like lower(:")
                        .append(key)
                        .append(")");
            } else {
                if (key.equals("priceStart")) {
                    filterPart.append(columnPrefix)
                            .append(".totalPrice >=");

                } else if (key.equals("priceEnd")) {
                    filterPart.append(columnPrefix)
                            .append(".totalPrice <=");

                } else if (key.equals("paidStart")) {
                    filterPart.append(columnPrefix)
                            .append(".paid >=");

                } else if (key.equals("paidEnd")) {
                    filterPart.append(columnPrefix)
                            .append(".paid <=");

                } else if (key.equals("changeStart")) {
                    filterPart.append(columnPrefix)
                            .append(".change >=");

                } else if (key.equals("changeEnd")) {
                    filterPart.append(columnPrefix)
                            .append(".change <=");

                } else if (key.equals("issuedAtStart")) {
                    filterPart.append(columnPrefix)
                            .append(".issuedAt >=");

                } else if (key.equals("issuedAtEnd")) {
                    filterPart.append(columnPrefix)
                            .append(".issuedAt <=");
                }
                filterPart.append(" :")
                        .append(key);
            }
        }
        return getValidJpqlPart(filterPart.toString());
    }

    public String getValidItemFilter(Map<String, Object> filterData, String columnPrefix) {
        StringBuilder filterPart = new StringBuilder();
        for (Map.Entry<String, Object> entry : filterData.entrySet()) {
            String key = entry.getKey();

            filterPart.append(" and ");
            if (key.equals("productName")) {
                filterPart.append("lower(")
                        .append(columnPrefix)
                        .append(".product.name) like lower(:")
                        .append(key)
                        .append(")");
            } else {
                if (key.equals("productPriceStart")) {
                    filterPart.append(columnPrefix)
                            .append(".product.price >=");

                } else if (key.equals("productPriceEnd")) {
                    filterPart.append(columnPrefix)
                            .append(".product.price <=");

                } else if (key.equals("productQuantityStart")) {
                    filterPart.append(columnPrefix)
                            .append(".productQuantity >=");

                } else if (key.equals("productQuantityEnd")) {
                    filterPart.append(columnPrefix)
                            .append(".productQuantity <=");

                }
                filterPart.append(" :")
                        .append(key);
            }
        }
        return getValidJpqlPart(filterPart.toString());
    }

    public String getValidItemOrderBy(Sort sort) {
        StringBuilder orderBy = new StringBuilder();
        if (!sort.isUnsorted()) {
            sort = new Sort("", null, sort);
            while (sort.hasNext()) {
                sort = sort.sortNext();

                String property = sort.property();

                if (property.equals("productName")) {
                    orderBy
                            .append("product.name ")
                            .append(sort.order().toString());
                } else if (property.equals("productPrice")) {
                    orderBy
                            .append("product.price ")
                            .append(sort.order().toString());
                } else {
                    orderBy
                            .append(property)
                            .append(" ")
                            .append(sort.order().toString());
                }

                if (sort.hasNext()) {
                    orderBy.append(", ");
                }
            }
        }

        return getValidOrderBy(orderBy.toString());
    }
}
