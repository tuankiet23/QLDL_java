package Demo.Service;

import java.util.List;

public interface ICommonService <T, E>{
    public List<E> getAll();
    public  List<E> getTourVip();
    public  List<E> getTourThuong();
    public List<E> getByIDTinh(String id);
    public  List<E> getTourHot();
    public E getByID(String id);
    public List<E> getByKeyworf(String keyword);
    public  boolean add(T info);
    public boolean update(T info);
    public boolean delete(T info);
}