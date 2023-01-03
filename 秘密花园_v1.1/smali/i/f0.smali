.class public final Li/f0;
.super Li/g0;
.source "RequestBody.kt"


# instance fields
.field public final synthetic b:Lj/k;

.field public final synthetic c:Li/z;


# direct methods
.method public constructor <init>(Lj/k;Li/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/f0;->b:Lj/k;

    iput-object p2, p0, Li/f0;->c:Li/z;

    invoke-direct {p0}, Li/g0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Li/f0;->b:Lj/k;

    .line 2
    invoke-virtual {v0}, Lj/k;->b()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Li/z;
    .locals 1

    .line 1
    iget-object v0, p0, Li/f0;->c:Li/z;

    return-object v0
.end method

.method public e(Lj/i;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Li/f0;->b:Lj/k;

    invoke-interface {p1, v0}, Lj/i;->s(Lj/k;)Lj/i;

    return-void

    :cond_0
    const-string p1, "sink"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
