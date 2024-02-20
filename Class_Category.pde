// so that in the larger timeline, we can zoom in even further to a mini timeline which will contain all the books (the in date timeline)
class Category{
    String category;
    String date;
    float percentage;
    int year;
    int month;

    Category(int year, int month, String date, String category, float percentage){
        this.category = category;
        this.date = date;
        this.percentage = percentage;
        this.year = year;
        this.month = month;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public float getPercentage() {
        return percentage;
    }

    public void setPercentage(float percentage) {
        this.percentage = percentage;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    


}
