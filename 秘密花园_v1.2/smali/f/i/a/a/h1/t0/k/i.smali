.class public abstract Lf/i/a/a/h1/t0/k/i;
.super Ljava/lang/Object;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/t0/k/i$b;,
        Lf/i/a/a/h1/t0/k/i$c;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/b0;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/t0/k/d;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lf/i/a/a/h1/t0/k/h;


# direct methods
.method public constructor <init>(JLf/i/a/a/b0;Ljava/lang/String;Lf/i/a/a/h1/t0/k/j;Ljava/util/List;Lf/i/a/a/h1/t0/k/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lf/i/a/a/h1/t0/k/i;->a:Lf/i/a/a/b0;

    .line 3
    iput-object p4, p0, Lf/i/a/a/h1/t0/k/i;->b:Ljava/lang/String;

    if-nez p6, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lf/i/a/a/h1/t0/k/i;->d:Ljava/util/List;

    .line 6
    invoke-virtual {p5, p0}, Lf/i/a/a/h1/t0/k/j;->a(Lf/i/a/a/h1/t0/k/i;)Lf/i/a/a/h1/t0/k/h;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/t0/k/i;->e:Lf/i/a/a/h1/t0/k/h;

    .line 7
    iget-wide p2, p5, Lf/i/a/a/h1/t0/k/j;->c:J

    iget-wide p6, p5, Lf/i/a/a/h1/t0/k/j;->b:J

    const-wide/32 p4, 0xf4240

    invoke-static/range {p2 .. p7}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide p1

    .line 8
    iput-wide p1, p0, Lf/i/a/a/h1/t0/k/i;->c:J

    return-void
.end method


# virtual methods
.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Lf/i/a/a/h1/t0/f;
.end method

.method public abstract j()Lf/i/a/a/h1/t0/k/h;
.end method
