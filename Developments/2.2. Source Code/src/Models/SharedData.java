package Models;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class SharedData {
    private static SharedData instance;
    private int animeid;
<<<<<<< HEAD
    private String title;
=======
>>>>>>> b550c251204b4cd80132e39612f5820a3034bdaa
    private ObservableList<Information> lastUpdatedInfo = FXCollections.observableArrayList();

    private SharedData() {}

    public static SharedData getInstance() {
        if (instance == null) {
            instance = new SharedData();
        }
        return instance;
    }

    public int getAnimeId() {
        return animeid;
    }

    public void setAnimeId(int animeid) {
        this.animeid = animeid;
    }
<<<<<<< HEAD
    public void setTitle(String title){this.title = title;}
=======
>>>>>>> b550c251204b4cd80132e39612f5820a3034bdaa

    public ObservableList<Information> getLastUpdatedInfo() {
        return lastUpdatedInfo;
    }

    public void addLastUpdatedInfo(Information info){
        lastUpdatedInfo.add(info);
    }
}
