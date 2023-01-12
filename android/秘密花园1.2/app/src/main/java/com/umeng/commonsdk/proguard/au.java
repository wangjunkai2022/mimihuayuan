package com.umeng.commonsdk.proguard;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: TIOStreamTransport.java */
/* loaded from: classes.dex */
public class au extends aw {
    public InputStream a;
    public OutputStream b;

    public au() {
        this.a = null;
        this.b = null;
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public int a(byte[] bArr, int i2, int i3) throws ax {
        InputStream inputStream = this.a;
        if (inputStream != null) {
            try {
                int read = inputStream.read(bArr, i2, i3);
                if (read >= 0) {
                    return read;
                }
                throw new ax(4);
            } catch (IOException e2) {
                throw new ax(0, e2);
            }
        }
        throw new ax(1, "Cannot read from null inputStream");
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public boolean a() {
        return true;
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public void b() throws ax {
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public void b(byte[] bArr, int i2, int i3) throws ax {
        OutputStream outputStream = this.b;
        if (outputStream != null) {
            try {
                outputStream.write(bArr, i2, i3);
                return;
            } catch (IOException e2) {
                throw new ax(0, e2);
            }
        }
        throw new ax(1, "Cannot write to null outputStream");
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public void c() {
        InputStream inputStream = this.a;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            this.a = null;
        }
        OutputStream outputStream = this.b;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            this.b = null;
        }
    }

    @Override // com.umeng.commonsdk.proguard.aw
    public void d() throws ax {
        OutputStream outputStream = this.b;
        if (outputStream != null) {
            try {
                outputStream.flush();
                return;
            } catch (IOException e2) {
                throw new ax(0, e2);
            }
        }
        throw new ax(1, "Cannot flush null outputStream");
    }

    public au(InputStream inputStream) {
        this.a = null;
        this.b = null;
        this.a = inputStream;
    }

    public au(OutputStream outputStream) {
        this.a = null;
        this.b = null;
        this.b = outputStream;
    }

    public au(InputStream inputStream, OutputStream outputStream) {
        this.a = null;
        this.b = null;
        this.a = inputStream;
        this.b = outputStream;
    }
}
