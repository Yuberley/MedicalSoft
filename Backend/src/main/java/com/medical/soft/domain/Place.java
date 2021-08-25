package com.medical.soft.domain;

public class Place {
    private int placeId;
    private String PlaceBirth;
    private String PlaceResidence;
    private String PlaceOrigin;

    public int getPlaceId() {
        return placeId;
    }

    public void setPlaceId(int placeId) {
        this.placeId = placeId;
    }

    public String getPlaceBirth() {
        return PlaceBirth;
    }

    public void setPlaceBirth(String placeBirth) {
        PlaceBirth = placeBirth;
    }

    public String getPlaceResidence() {
        return PlaceResidence;
    }

    public void setPlaceResidence(String placeResidence) {
        PlaceResidence = placeResidence;
    }

    public String getPlaceOrigin() {
        return PlaceOrigin;
    }

    public void setPlaceOrigin(String placeOrigin) {
        PlaceOrigin = placeOrigin;
    }
}

