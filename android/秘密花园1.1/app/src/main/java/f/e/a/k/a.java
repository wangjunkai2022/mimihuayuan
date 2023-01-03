package f.e.a.k;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.youth.banner.loader.ImageLoader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* compiled from: AbbGlideImageLoader.java */
/* loaded from: classes.dex */
public class a extends ImageLoader {

    /* compiled from: AbbGlideImageLoader.java */
    /* renamed from: f.e.a.k.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class AsyncTaskC0058a extends AsyncTask<String, String, String> {
        @SuppressLint({"StaticFieldLeak"})
        public ImageView a;
        @SuppressLint({"StaticFieldLeak"})
        public Context b;

        /* renamed from: c  reason: collision with root package name */
        public final String f3967c;

        /* renamed from: d  reason: collision with root package name */
        public Bitmap f3968d = null;

        /* renamed from: e  reason: collision with root package name */
        public HttpURLConnection f3969e;

        public AsyncTaskC0058a(Context context, ImageView imageView, String str) {
            this.a = imageView;
            this.f3967c = str;
            this.b = context;
        }

        @Override // android.os.AsyncTask
        public String doInBackground(String[] strArr) {
            IOException e2;
            InputStream inputStream;
            int i2;
            InputStream inputStream2 = null;
            try {
                try {
                    try {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f3967c).openConnection();
                        this.f3969e = httpURLConnection;
                        httpURLConnection.setConnectTimeout(10000);
                        this.f3969e.connect();
                        inputStream = this.f3969e.getInputStream();
                    } catch (IOException e3) {
                        e2 = e3;
                        inputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        if (0 != 0) {
                            try {
                                inputStream2.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                                throw th;
                            }
                        }
                        this.f3969e = null;
                        throw th;
                    }
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = inputStream.read(bArr, 0, 1024);
                            if (read <= 0) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, read);
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        for (i2 = 0; i2 < byteArray.length; i2++) {
                            byteArray[i2] = (byte) (byteArray[i2] ^ 56);
                        }
                        this.f3968d = BitmapFactory.decodeStream(new ByteArrayInputStream(byteArray));
                        inputStream.close();
                    } catch (IOException e5) {
                        e2 = e5;
                        e2.printStackTrace();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        this.f3969e = null;
                        return "";
                    }
                    this.f3969e = null;
                    return "";
                } catch (IOException e6) {
                    e6.printStackTrace();
                    return "";
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            if (this.f3968d != null && this.a != null && !((Activity) this.b).isDestroyed()) {
                this.a.setImageBitmap(this.f3968d);
            }
            this.a = null;
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
        }
    }

    @Override // com.youth.banner.loader.ImageLoaderInterface
    public void displayImage(Context context, Object obj, ImageView imageView) {
        new AsyncTaskC0058a(context, imageView, (String) obj).execute("");
    }
}
