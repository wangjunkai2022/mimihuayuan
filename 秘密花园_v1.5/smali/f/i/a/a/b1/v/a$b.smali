.class public final Lf/i/a/a/b1/v/a$b;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lf/i/a/a/b1/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/b1/v/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/b1/v/a;


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/v/a;Lf/i/a/a/b1/v/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/v/a$b;->a:Lf/i/a/a/b1/v/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h(J)Lf/i/a/a/b1/n$a;
    .locals 9

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/v/a$b;->a:Lf/i/a/a/b1/v/a;

    .line 2
    iget-object v1, v0, Lf/i/a/a/b1/v/a;->d:Lf/i/a/a/b1/v/h;

    .line 3
    iget v1, v1, Lf/i/a/a/b1/v/h;->i:I

    int-to-long v1, v1

    mul-long v1, v1, p1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    .line 4
    iget-wide v5, v0, Lf/i/a/a/b1/v/a;->b:J

    .line 5
    iget-wide v3, v0, Lf/i/a/a/b1/v/a;->c:J

    sub-long v7, v3, v5

    mul-long v7, v7, v1

    .line 6
    iget-wide v0, v0, Lf/i/a/a/b1/v/a;->f:J

    .line 7
    div-long/2addr v7, v0

    add-long/2addr v7, v5

    const-wide/16 v0, 0x7530

    sub-long v0, v7, v0

    const-wide/16 v7, 0x1

    sub-long v7, v3, v7

    move-wide v3, v0

    .line 8
    invoke-static/range {v3 .. v8}, Lf/i/a/a/m1/h0;->p(JJJ)J

    move-result-wide v0

    .line 9
    new-instance v2, Lf/i/a/a/b1/n$a;

    new-instance v3, Lf/i/a/a/b1/o;

    invoke-direct {v3, p1, p2, v0, v1}, Lf/i/a/a/b1/o;-><init>(JJ)V

    invoke-direct {v2, v3}, Lf/i/a/a/b1/n$a;-><init>(Lf/i/a/a/b1/o;)V

    return-object v2
.end method

.method public j()J
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/v/a$b;->a:Lf/i/a/a/b1/v/a;

    .line 2
    iget-object v1, v0, Lf/i/a/a/b1/v/a;->d:Lf/i/a/a/b1/v/h;

    .line 3
    iget-wide v2, v0, Lf/i/a/a/b1/v/a;->f:J

    .line 4
    invoke-virtual {v1, v2, v3}, Lf/i/a/a/b1/v/h;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
