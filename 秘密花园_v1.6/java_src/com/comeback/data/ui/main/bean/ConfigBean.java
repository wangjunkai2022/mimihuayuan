package com.comeback.data.ui.main.bean;

import c.a.a.b.g.h;
import com.comeback.data.App;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.f.k;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;
/* loaded from: classes.dex */
public class ConfigBean extends k {
    public List<AD> banner;
    public ChannelConfig config;
    public String dialogNotice;
    public List<HomeBean> extra;
    public boolean force;
    public String iosShare;
    public List<String> lanzou;
    public AD launch;
    public List<AD> launchs;
    public List<String> newShareTexts;
    public List<String> newUrls;
    public String notice;
    public int noticeNo;
    public String shareText;
    public List<String> shareTexts;
    public InstallTask task;
    public List<InstallTask> tasks;
    public String updateNotice;
    public String updateUrl;
    public List<String> updateUrls;
    public String version;
    public int versionNo;

    public static ConfigBean getTestData() {
        ConfigBean configBean = new ConfigBean();
        configBean.setNotice(e.a("3/vdg9rAbWVVCFYUCFFpV1UQXYbr59uz54S085rq94m39oHk/5G5p5HmoIX4/oHro4Dj8InzrdHuwtvf92BfCUVchOfGmq6bkeaIiMDlhPCDhPHJifOF3Mvp0/vzjers1eLfi9P83Lv1gYXcmurfhI/ti8PtmpuikeaIiMDlgeuLjdvrjeOl1MfEPlsaGF2OssqF8tuXgbmU3IuIxOaH07yK3tmOw4ja8+fS18CO2u5hKzNuVxFLDZbjuY/M04fTvIre2YTPtdb2zt3k0I/m5t/W2ozM8d6v+GwIBQpUh9GthNfWjNW21vvP0cjEguvB0dPkjfD1FNbj4tPA9YLW79HY825XEUsNm/+KgMnZIj3e4M2DxcLWj+lGVRQcGSMMWgMKCEUQVl55WlYVRmBfCUVcaVgJAQcVHQRHF0OC+tXQ09AlPZaXq5TbpUEWCBAbDGhfBhlNH10RFURcncTqjrrxhvjblqSzSUYSCRoZE1BfFhcUGEkWHAQRQ0kaCwoPQkwACwZ5BVEBWBIJGhkTUN/p2oL179yvw4Op50JKRQVVERNfAwdNQ0lJGx8RCw4CVhRNBwQe"));
        configBean.setNoticeNo(100);
        configBean.setVersion(e.a("09/DgsbQ3K/bgonYn/7LjK3mQyUbAxnU5ffQ28SM+8Te//2C2Obek8eOk8Sf8OeMvuqF+Mechb+a+6qBy/+Ey4OKxMeM+rHW/Mnc5MWO3/HfwMiC6sXft/yAkOqd78aMoOeFy/mchb+byYOPyMKF7rmG3tuM55HQ8+QIBQpUXwlFXIXs+peCn5T8sEc5GhOPj++G9MCXgoiX26GDxt+E4ZiF98yN+47a6fbTwPmN+e/T2cCDy/LWj/+Cjfic0u6Pi/iG6O6WqZiX3Y+Dxf+F3raE0/eO+abb8Nvb2/SCzNzR9t2B1PDdjsyBoM+b6uFXVRBdWAkBB9fOxtHo147Yzt7i+YzU9N2I1oKM7J3tw4+PyIXcy5q4oJfev4/F14XGlIXq7ITPow8RFApbGhhdWRmH6cSO9pxHFgpRAAoLDoyJxovq3Ja2pZfev4/F14r4iYTtwVcRSw1TDkATCBlZRBgWTQkOXEpWCx9cEhpSW1MLABFaVxFLDUBI09rpjfjz09rojNbOBVEBWBQPDB4TGA1NTBwSCQ8KRV8aCxkEGQRCC00HBB4WQFwOWwodWENLCwARWlcRSw1TDkATCBlZRBgaGh5dSg8KXQpVCQIFFgIZAQwJRAAWWxwLUVRYSl8JRVxfBhlNGVsHEkQUQkVME04YVV1dShdfEghOCA0DTQhYD0wXRBtWXhZSFEdECBFVCwARWksbTUcDFQ5IVxIaEQFbVV1FH1hdCQlBDlYJDAYYEUwMBB5cBg=="));
        configBean.setVersionNo(100);
        AD ad = new AD();
        ad.setImage(e.a("XxYXFFFcFksaB1kODgMHDlhMAUkIF1cdHQNASB4DDw4YGgoFBhpPWhcDW0gSGgREVhgTUVpGFgdEVwZUV1pNAUcF"));
        ad.setTargetUrl(e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG"));
        configBean.setLaunch(ad);
        ArrayList arrayList = new ArrayList();
        AD ad2 = new AD();
        ad2.setImage(e.a("XxYXFBhJFhwDD1dJSVpRX1YUTQcIXAsDQl8EUFdZW0QPVwdWXRALAEJRBAUeX1VbVFNWUFkQCgRAU1dQGgxQUxkIEwM="));
        ad2.setTargetUrl(e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG"));
        arrayList.add(ad2);
        AD ad3 = new AD();
        ad3.setImage(e.a("XxYXFBhJFhwDD1dJSVpRX1YUTQcIXAsDQl8FVldZU0QCVwcADkdaUUNUUQUZXFNZD1oFBQpHXFBHV1dfHAhQWxkIEwM="));
        ad3.setTargetUrl(e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG"));
        arrayList.add(ad3);
        AD ad4 = new AD();
        ad4.setImage(e.a("XxYXFBhJFhwDD1dJSVpRX1YUTQcIXAsDQl8EUldaBUQGVwABXEINUUdfBVJODFVfBFIHAltDDgsWVQ1XSl1TDRkIEwM="));
        ad4.setTargetUrl(e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG"));
        arrayList.add(ad4);
        AD ad5 = new AD();
        ad5.setImage(e.a("XxYXFBhJFhwDD1dJSVpRX1YUTQcIXAsDQl8EUFcIBkQHVwdWDUQAVUUCA1IeXlFaAAZbAghFDANCBAZeTg8BDhkIEwM="));
        ad5.setTargetUrl(e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG"));
        arrayList.add(ad5);
        configBean.setBanner(arrayList);
        ArrayList arrayList2 = new ArrayList();
        HomeBean homeBean = new HomeBean();
        homeBean.setIconUrl(e.a("XxYXFBhJFhwLCwNWT0QABFpNEBAKB1BQXA9ZBh8PEERbDQQLWl1JXRQ="));
        homeBean.setUrl(e.a("XxYXFBhJFhwEEUNJAAMCBl4DFUoNBlc="));
        homeBean.setType(100);
        homeBean.setDescribe(e.a("0erygvPc37rag4XyEQkMBQ=="));
        homeBean.setName(e.a("0evKgdrm"));
        arrayList2.add(homeBean);
        configBean.setExtra(arrayList2);
        return configBean;
    }

    public List<String> getAllUpdateUrl() {
        List<String> list = this.newUrls;
        if (list != null && list.size() != 0) {
            return this.newUrls;
        }
        List<String> list2 = this.lanzou;
        if (list2 != null && list2.size() != 0) {
            List<String> list3 = this.lanzou;
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            int i2 = calendar.get(6);
            int i3 = calendar.get(1);
            int i4 = i2 / 7;
            ArrayList arrayList = new ArrayList();
            for (String str : list3) {
                StringBuilder o = a.o(str);
                o.append(e.a("Uw=="));
                o.append(String.valueOf(i3));
                int i5 = i4 * 2;
                o.append(i5);
                arrayList.add(o.toString());
                arrayList.add(str + e.a("Uw==") + String.valueOf(i3) + (i5 + 1));
            }
            return arrayList;
        }
        ArrayList<String> l2 = h.l();
        if (l2.size() != 0) {
            return l2;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(this.updateUrl);
        return arrayList2;
    }

    public List<AD> getBanner() {
        return this.banner;
    }

    public ChannelConfig getConfig() {
        return this.config;
    }

    public String getDialogNotice() {
        return this.dialogNotice;
    }

    public List<HomeBean> getExtra() {
        return this.extra;
    }

    public String getIosShare() {
        return this.iosShare;
    }

    public String getIosShareText() {
        return e.a("PQpWgdTY0LPsjprYkf3NhIv4") + this.iosShare;
    }

    public List<String> getLanzou() {
        return this.lanzou;
    }

    public AD getLaunch() {
        List<AD> list = this.launchs;
        if (list != null && list.size() != 0) {
            return this.launchs.get(new Random().nextInt(this.launchs.size()));
        }
        return this.launch;
    }

    public List<AD> getLaunchs() {
        return this.launchs;
    }

    public List<String> getNewShareTexts() {
        return this.newShareTexts;
    }

    public String getNewUrl() {
        List<String> list = this.newUrls;
        if (list != null && list.size() != 0) {
            return this.newUrls.get(new Random().nextInt(this.newUrls.size()));
        }
        ArrayList<String> l2 = h.l();
        if (l2.size() != 0) {
            return l2.get(new Random().nextInt(l2.size()));
        }
        return this.updateUrl;
    }

    public List<String> getNewUrls() {
        return this.newUrls;
    }

    public String getNotice() {
        return this.notice;
    }

    public int getNoticeNo() {
        int i2 = this.noticeNo;
        if (i2 == 100) {
            return -1;
        }
        return i2;
    }

    public String getShareText() {
        List<String> list = this.shareTexts;
        if (list != null && list.size() != 0) {
            return this.shareTexts.get(new Random().nextInt(this.shareTexts.size()));
        }
        return this.shareText;
    }

    public String getShareText2() {
        List<String> list = this.newShareTexts;
        return (list == null || list.size() == 0) ? "" : this.newShareTexts.get(new Random().nextInt(this.newShareTexts.size()));
    }

    public InstallTask getTask() {
        return this.task;
    }

    public List<InstallTask> getTasks() {
        return this.tasks;
    }

    public String getUpdateNotice() {
        return this.updateNotice;
    }

    public String getUpdateUrl() {
        List<String> list = this.updateUrls;
        if (list != null && list.size() != 0) {
            return this.updateUrls.get(new Random().nextInt(this.updateUrls.size()));
        }
        return this.updateUrl;
    }

    public String getVersion() {
        return this.version;
    }

    public int getVersionNo() {
        return this.versionNo;
    }

    public boolean isForce() {
        return this.force || getVersionNo() - h.R(App.b) > 30;
    }

    public void setBanner(List<AD> list) {
        this.banner = list;
    }

    public void setConfig(ChannelConfig channelConfig) {
        this.config = channelConfig;
    }

    public void setDialogNotice(String str) {
        this.dialogNotice = str;
    }

    public void setExtra(List<HomeBean> list) {
        this.extra = list;
    }

    public void setForce(boolean z) {
        this.force = z;
    }

    public void setIosShare(String str) {
        this.iosShare = str;
    }

    public void setLanzou(List<String> list) {
        this.lanzou = list;
    }

    public void setLaunch(AD ad) {
        this.launch = ad;
    }

    public void setLaunchs(List<AD> list) {
        this.launchs = list;
    }

    public void setNewShareTexts(List<String> list) {
        this.newShareTexts = list;
    }

    public void setNewUrls(List<String> list) {
        this.newUrls = list;
    }

    public void setNotice(String str) {
        this.notice = str;
    }

    public void setNoticeNo(int i2) {
        this.noticeNo = i2;
    }

    public void setShareText(String str) {
        this.shareText = str;
    }

    public void setTask(InstallTask installTask) {
        this.task = installTask;
    }

    public void setTasks(List<InstallTask> list) {
        this.tasks = list;
    }

    public void setUpdateNotice(String str) {
        this.updateNotice = str;
    }

    public void setUpdateUrl(String str) {
        this.updateUrl = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public void setVersionNo(int i2) {
        this.versionNo = i2;
    }
}
