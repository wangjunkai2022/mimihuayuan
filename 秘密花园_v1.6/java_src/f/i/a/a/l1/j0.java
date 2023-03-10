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
    public final int f5613e;

    /* renamed from: f  reason: collision with root package name */
    public final byte[] f5614f;

    /* renamed from: g  reason: collision with root package name */
    public final DatagramPacket f5615g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public Uri f5616h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public DatagramSocket f5617i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public MulticastSocket f5618j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public InetAddress f5619k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public InetSocketAddress f5620l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f5621m;
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
        this.f5613e = 8000;
        this.f5614f = new byte[2000];
        this.f5615g = new DatagramPacket(this.f5614f, 0, 2000);
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws a {
        Uri uri = pVar.a;
        this.f5616h = uri;
        String host = uri.getHost();
        int port = this.f5616h.getPort();
        g(pVar);
        try {
            this.f5619k = InetAddress.getByName(host);
            this.f5620l = new InetSocketAddress(this.f5619k, port);
            if (this.f5619k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(this.f5620l);
                this.f5618j = multicastSocket;
                multicastSocket.joinGroup(this.f5619k);
                this.f5617i = this.f5618j;
            } else {
                this.f5617i = new DatagramSocket(this.f5620l);
            }
            try {
                this.f5617i.setSoTimeout(this.f5613e);
                this.f5621m = true;
                h(pVar);
                return -1L;
            } catch (SocketException e2) {
                throw new a(e2);
            }
        } catch (IOException e3) {
            throw new a(e3);
        }
    }

    @Override // f.i.a.a.l1.m
    public void close() {
        this.f5616h = null;
        MulticastSocket multicastSocket = this.f5618j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.f5619k);
            } catch (IOException unused) {
            }
            this.f5618j = null;
        }
        DatagramSocket datagramSocket = this.f5617i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f5617i = null;
        }
        this.f5619k = null;
        this.f5620l = null;
        this.n = 0;
        if (this.f5621m) {
            this.f5621m = false;
            f();
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.f5616h;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws a {
        if (i3 == 0) {
            return 0;
        }
        if (this.n == 0) {
            try {
                this.f5617i.receive(this.f5615g);
                int length = this.f5615g.getLength();
                this.n = length;
                e(length);
            } catch (IOException e2) {
                throw new a(e2);
            }
        }
        int length2 = this.f5615g.getLength();
        int i4 = this.n;
        int min = Math.min(i4, i3);
        System.arraycopy(this.f5614f, length2 - i4, bArr, i2, min);
        this.n -= min;
        return min;
    }
}
