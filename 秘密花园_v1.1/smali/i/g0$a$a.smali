.class public final Li/g0$a$a;
.super Li/g0;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/g0$a;->b([BLi/z;II)Li/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:[B

.field public final synthetic c:Li/z;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>([BLi/z;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/g0$a$a;->b:[B

    iput-object p2, p0, Li/g0$a$a;->c:Li/z;

    iput p3, p0, Li/g0$a$a;->d:I

    iput p4, p0, Li/g0$a$a;->e:I

    invoke-direct {p0}, Li/g0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget v0, p0, Li/g0$a$a;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Li/z;
    .locals 1

    .line 1
    iget-object v0, p0, Li/g0$a$a;->c:Li/z;

    return-object v0
.end method

.method public e(Lj/i;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Li/g0$a$a;->b:[B

    iget v1, p0, Li/g0$a$a;->e:I

    iget v2, p0, Li/g0$a$a;->d:I

    invoke-interface {p1, v0, v1, v2}, Lj/i;->a([BII)Lj/i;

    return-void

    :cond_0
    const-string p1, "sink"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
