.class public final Li/m0/g/f$c$a;
.super Li/m0/g/f$c;
.source "Http2Connection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/g/f$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/m0/g/f$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Li/m0/g/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    sget-object v1, Li/m0/g/b;->f:Li/m0/g/b;

    invoke-virtual {p1, v1, v0}, Li/m0/g/m;->c(Li/m0/g/b;Ljava/io/IOException;)V

    return-void

    :cond_0
    const-string p1, "stream"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method
