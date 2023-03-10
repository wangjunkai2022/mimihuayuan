.class public final Li/m0/g/f$f;
.super Ljava/lang/Object;
.source "Util.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/m0/g/f;->K(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Li/m0/g/f;

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Li/m0/g/f;IJ)V
    .locals 0

    iput-object p1, p0, Li/m0/g/f$f;->a:Ljava/lang/String;

    iput-object p2, p0, Li/m0/g/f$f;->b:Li/m0/g/f;

    iput p3, p0, Li/m0/g/f$f;->c:I

    iput-wide p4, p0, Li/m0/g/f$f;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Li/m0/g/f$f;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "currentThread"

    .line 3
    invoke-static {v1, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Li/m0/g/f$f;->b:Li/m0/g/f;

    .line 6
    iget-object v0, v0, Li/m0/g/f;->s:Li/m0/g/n;

    .line 7
    iget v3, p0, Li/m0/g/f$f;->c:I

    iget-wide v4, p0, Li/m0/g/f$f;->d:J

    invoke-virtual {v0, v3, v4, v5}, Li/m0/g/n;->H(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    :try_start_1
    iget-object v3, p0, Li/m0/g/f$f;->b:Li/m0/g/f;

    .line 9
    sget-object v4, Li/m0/g/b;->c:Li/m0/g/b;

    invoke-virtual {v3, v4, v4, v0}, Li/m0/g/f;->d(Li/m0/g/b;Li/m0/g/b;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
