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
    public final int f5604e;

    /* renamed from: f  reason: collision with root package name */
    public final byte[] f5605f;

    /* renamed from: g  reason: collision with root package name */
    public final DatagramPacket f5606g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public Uri f5607h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public DatagramSocket f5608i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public MulticastSocket f5609j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public InetAddress f5610k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public InetSocketAddress f5611l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f5612m;
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
        this.f5604e = 8000;
        this.f5605f = new byte[2000];
        this.f5606g = new DatagramPacket(this.f5605f, 0, 2000);
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws a {
        Uri uri = pVar.a;
        this.f5607h = uri;
        String host = uri.getHost();
        int port = this.f5607h.getPort();
        g(pVar);
        try {
            this.f5610k = InetAddress.getByName(host);
            this.f5611l = new InetSocketAddress(this.f5610k, port);
            if (this.f5610k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(this.f5611l);
                this.f5609j = multicastSocket;
                multicastSocket.joinGroup(this.f5610k);
                this.f5608i = this.f5609j;
            } else {
                this.f5608i = new DatagramSocket(this.f5611l);
            }
            try {
                this.f5608i.setSoTimeout(this.f5604e);
                this.f5612m = true;
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
        this.f5607h = null;
        MulticastSocket multicastSocket = this.f5609j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.f5610k);
            } catch (IOException unused) {
            }
            this.f5609j = null;
        }
        DatagramSocket datagramSocket = this.f5608i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f5608i = null;
        }
        this.f5610k = null;
        this.f5611l = null;
        this.n = 0;
        if (this.f5612m) {
            this.f5612m = false;
            f();
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.f5607h;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws a {
        if (i3 == 0) {
            return 0;
        }
        if (this.n == 0) {
            try {
                this.f5608i.receive(this.f5606g);
                int length = this.f5606g.getLength();
                this.n = length;
                e(length);
            } catch (IOException e2) {
                throw new a(e2);
            }
        }
        int length2 = this.f5606g.getLength();
        int i4 = this.n;
        int min = Math.min(i4, i3);
        System.arraycopy(this.f5605f, length2 - i4, bArr, i2, min);
        this.n -= min;
        return min;
    }
}
