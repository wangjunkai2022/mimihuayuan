.class public final Lf/i/a/a/l1/j0;
.super Lf/i/a/a/l1/h;
.source "UdpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/l1/j0$a;
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:[B

.field public final g:Ljava/net/DatagramPacket;

.field public h:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Ljava/net/DatagramSocket;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:Ljava/net/MulticastSocket;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Ljava/net/InetAddress;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Ljava/net/InetSocketAddress;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Z

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lf/i/a/a/l1/h;-><init>(Z)V

    const/16 v0, 0x1f40

    .line 2
    iput v0, p0, Lf/i/a/a/l1/j0;->e:I

    const/16 v0, 0x7d0

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lf/i/a/a/l1/j0;->f:[B

    .line 4
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lf/i/a/a/l1/j0;->f:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v1, p0, Lf/i/a/a/l1/j0;->g:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public b(Lf/i/a/a/l1/p;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/j0$a;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    iput-object v0, p0, Lf/i/a/a/l1/j0;->h:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lf/i/a/a/l1/j0;->h:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    .line 4
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/h;->g(Lf/i/a/a/l1/p;)V

    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/l1/j0;->k:Ljava/net/InetAddress;

    .line 6
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lf/i/a/a/l1/j0;->k:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lf/i/a/a/l1/j0;->l:Ljava/net/InetSocketAddress;

    .line 7
    iget-object v0, p0, Lf/i/a/a/l1/j0;->k:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, Lf/i/a/a/l1/j0;->l:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lf/i/a/a/l1/j0;->j:Ljava/net/MulticastSocket;

    .line 9
    iget-object v1, p0, Lf/i/a/a/l1/j0;->k:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 10
    iget-object v0, p0, Lf/i/a/a/l1/j0;->j:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lf/i/a/a/l1/j0;->i:Ljava/net/DatagramSocket;

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Lf/i/a/a/l1/j0;->l:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lf/i/a/a/l1/j0;->i:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    :goto_0
    :try_start_1
    iget-object v0, p0, Lf/i/a/a/l1/j0;->i:Ljava/net/DatagramSocket;

    iget v1, p0, Lf/i/a/a/l1/j0;->e:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lf/i/a/a/l1/j0;->m:Z

    .line 14
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/h;->h(Lf/i/a/a/l1/p;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Lf/i/a/a/l1/j0$a;

    invoke-direct {v0, p1}, Lf/i/a/a/l1/j0$a;-><init>(Ljava/io/IOException;)V

    throw v0

    :catch_1
    move-exception p1

    .line 16
    new-instance v0, Lf/i/a/a/l1/j0$a;

    invoke-direct {v0, p1}, Lf/i/a/a/l1/j0$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lf/i/a/a/l1/j0;->h:Landroid/net/Uri;

    .line 2
    iget-object v1, p0, Lf/i/a/a/l1/j0;->j:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    iget-object v2, p0, Lf/i/a/a/l1/j0;->k:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    iput-object v0, p0, Lf/i/a/a/l1/j0;->j:Ljava/net/MulticastSocket;

    .line 5
    :cond_0
    iget-object v1, p0, Lf/i/a/a/l1/j0;->i:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 7
    iput-object v0, p0, Lf/i/a/a/l1/j0;->i:Ljava/net/DatagramSocket;

    .line 8
    :cond_1
    iput-object v0, p0, Lf/i/a/a/l1/j0;->k:Ljava/net/InetAddress;

    .line 9
    iput-object v0, p0, Lf/i/a/a/l1/j0;->l:Ljava/net/InetSocketAddress;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lf/i/a/a/l1/j0;->n:I

    .line 11
    iget-boolean v1, p0, Lf/i/a/a/l1/j0;->m:Z

    if-eqz v1, :cond_2

    .line 12
    iput-boolean v0, p0, Lf/i/a/a/l1/j0;->m:Z

    .line 13
    invoke-virtual {p0}, Lf/i/a/a/l1/h;->f()V

    :cond_2
    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/j0;->h:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/j0$a;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lf/i/a/a/l1/j0;->n:I

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/l1/j0;->i:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lf/i/a/a/l1/j0;->g:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v0, p0, Lf/i/a/a/l1/j0;->g:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lf/i/a/a/l1/j0;->n:I

    .line 4
    invoke-virtual {p0, v0}, Lf/i/a/a/l1/h;->e(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lf/i/a/a/l1/j0$a;

    invoke-direct {p2, p1}, Lf/i/a/a/l1/j0$a;-><init>(Ljava/io/IOException;)V

    throw p2

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lf/i/a/a/l1/j0;->g:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Lf/i/a/a/l1/j0;->n:I

    sub-int/2addr v0, v1

    .line 7
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8
    iget-object v1, p0, Lf/i/a/a/l1/j0;->f:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget p1, p0, Lf/i/a/a/l1/j0;->n:I

    sub-int/2addr p1, p3

    iput p1, p0, Lf/i/a/a/l1/j0;->n:I

    return p3
.end method
