package entity;

import javax.persistence.*;

/**
 * Created by mandyxue on 15/5/28.
 */
@Entity
@Table(name = "innermongolia_trip", schema = "", catalog = "projectdb")
@NamedQueries({@NamedQuery(name = "details",query = "select it from InnermongoliaTripEntity it where it.name like :spot"),
        @NamedQuery(name="showAll",query = "select it from InnermongoliaTripEntity it ")})
public class InnermongoliaTripEntity {
    private String name;
    private String description;
    private String pic1;
    private String pic2;
    private String pic3;
    private String pic4;
    private String pic5;

    @Id
    @Column(name = "name", nullable = false, insertable = true, updatable = true, length = 30)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 3000)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "pic1", nullable = false, insertable = true, updatable = true, length = 50)
    public String getPic1() {
        return pic1;
    }

    public void setPic1(String pic1) {
        this.pic1 = pic1;
    }

    @Basic
    @Column(name = "pic2", nullable = false, insertable = true, updatable = true, length = 50)
    public String getPic2() {
        return pic2;
    }

    public void setPic2(String pic2) {
        this.pic2 = pic2;
    }

    @Basic
    @Column(name = "pic3", nullable = true, insertable = true, updatable = true, length = 50)
    public String getPic3() {
        return pic3;
    }

    public void setPic3(String pic3) {
        this.pic3 = pic3;
    }

    @Basic
    @Column(name = "pic4", nullable = true, insertable = true, updatable = true, length = 50)
    public String getPic4() {
        return pic4;
    }

    public void setPic4(String pic4) {
        this.pic4 = pic4;
    }

    @Basic
    @Column(name = "pic5", nullable = true, insertable = true, updatable = true, length = 50)
    public String getPic5() {
        return pic5;
    }

    public void setPic5(String pic5) {
        this.pic5 = pic5;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        InnermongoliaTripEntity that = (InnermongoliaTripEntity) o;

        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (pic1 != null ? !pic1.equals(that.pic1) : that.pic1 != null) return false;
        if (pic2 != null ? !pic2.equals(that.pic2) : that.pic2 != null) return false;
        if (pic3 != null ? !pic3.equals(that.pic3) : that.pic3 != null) return false;
        if (pic4 != null ? !pic4.equals(that.pic4) : that.pic4 != null) return false;
        if (pic5 != null ? !pic5.equals(that.pic5) : that.pic5 != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (pic1 != null ? pic1.hashCode() : 0);
        result = 31 * result + (pic2 != null ? pic2.hashCode() : 0);
        result = 31 * result + (pic3 != null ? pic3.hashCode() : 0);
        result = 31 * result + (pic4 != null ? pic4.hashCode() : 0);
        result = 31 * result + (pic5 != null ? pic5.hashCode() : 0);
        return result;
    }
}
