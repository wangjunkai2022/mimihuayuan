.class public final Li/u;
.super Li/g0;
.source "FormBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/u$a;
    }
.end annotation


# static fields
.field public static final d:Li/z;


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Li/z;->f:Li/z$a;

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Li/z$a;->a(Ljava/lang/String;)Li/z;

    move-result-object v0

    sput-object v0, Li/u;->d:Li/z;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0}, Li/g0;-><init>()V

    .line 2
    invoke-static {p1}, Li/m0/b;->D(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Li/u;->b:Ljava/util/List;

    .line 3
    invoke-static {p2}, Li/m0/b;->D(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Li/u;->c:Ljava/util/List;

    return-void

    :cond_0
    const-string p1, "encodedValues"

    .line 4
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "encodedNames"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Li/u;->i(Lj/i;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Li/z;
    .locals 1

    .line 1
    sget-object v0, Li/u;->d:Li/z;

    return-object v0
.end method

.method public e(Lj/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Li/u;->i(Lj/i;Z)J

    return-void

    :cond_0
    const-string p1, "sink"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final f(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final g(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/u;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final h()I
    .locals 1

    .line 1
    iget-object v0, p0, Li/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final i(Lj/i;Z)J
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lj/g;

    invoke-direct {p1}, Lj/g;-><init>()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lj/i;->h()Lj/g;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Li/u;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const/16 v2, 0x26

    .line 3
    invoke-virtual {p1, v2}, Lj/g;->Q(I)Lj/g;

    .line 4
    :cond_1
    iget-object v2, p0, Li/u;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lj/g;->c0(Ljava/lang/String;)Lj/g;

    const/16 v2, 0x3d

    .line 5
    invoke-virtual {p1, v2}, Lj/g;->Q(I)Lj/g;

    .line 6
    iget-object v2, p0, Li/u;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lj/g;->c0(Ljava/lang/String;)Lj/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    iget-wide v0, p1, Lj/g;->b:J

    .line 8
    invoke-virtual {p1, v0, v1}, Lj/g;->skip(J)V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0

    .line 9
    :cond_4
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 p1, 0x0

    throw p1
.end method
