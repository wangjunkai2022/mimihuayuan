package f.i.a.a.l1;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketException;

/* compiled from: UdpDataSource.java */
/* loaded from: classes.dex */
public final class j0 extends h {

    /* renamed from: e  reason: collision with root package name */
    public final int f5529e = 8000;

    /* renamed from: f  reason: collision with root package name */
    public final byte[] f5530f = new byte[2000];

    /* renamed from: g  reason: collision with root package name */
    public final DatagramPacket f5531g = new DatagramPacket(this.f5530f, 0, 2000);
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public Uri f5532h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public DatagramSocket f5533i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public MulticastSocket f5534j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public InetAddress f5535k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public InetSocketAddress f5536l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f5537m;
    public int n;

    /* compiled from: UdpDataSource.java */
    /* loaded from: classes.dex */
    public static final class a extends IOException {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public j0() {
        super(true);
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws a {
        Uri uri = pVar.a;
        this.f5532h = uri;
        String host = uri.getHost();
        int port = this.f5532h.getPort();
        g(pVar);
        try {
            this.f5535k = InetAddress.getByName(host);
            this.f5536l = new InetSocketAddress(this.f5535k, port);
            if (this.f5535k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(this.f5536l);
                this.f5534j = multicastSocket;
                multicastSocket.joinGroup(this.f5535k);
                this.f5533i = this.f5534j;
            } else {
                this.f5533i = new DatagramSocket(this.f5536l);
            }
            try {
                this.f5533i.setSoTimeout(this.f5529e);
                this.f5537m = true;
                h(pVar);
                return -1;
            } catch (SocketException e2) {
                throw new a(e2);
            }
        } catch (IOException e3) {
            throw new a(e3);
        }
    }

    @Override // f.i.a.a.l1.m
    public void close() {
        this.f5532h = null;
        MulticastSocket multicastSocket = this.f5534j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.f5535k);
            } catch (IOException unused) {
            }
            this.f5534j = null;
        }
        DatagramSocket datagramSocket = this.f5533i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f5533i = null;
        }
        this.f5535k = null;
        this.f5536l = null;
        this.n = 0;
        if (this.f5537m) {
            this.f5537m = false;
            f();
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.f5532h;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws a {
        if (i3 == 0) {
            return 0;
        }
        if (this.n == 0) {
            try {
                this.f5533i.receive(this.f5531g);
                int length = this.f5531g.getLength();
                this.n = length;
                e(length);
            } catch (IOException e2) {
                throw new a(e2);
            }
        }
        int length2 = this.f5531g.getLength();
        int i4 = this.n;
        int min = Math.min(i4, i3);
        System.arraycopy(this.f5530f, length2 - i4, bArr, i2, min);
        this.n -= min;
        return min;
    }
}
