.class public final Lf/i/a/a/i1/m/d$c;
.super Lf/i/a/a/i1/j;
.source "CeaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/i1/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Lf/i/a/a/i1/m/d;


# direct methods
.method public constructor <init>(Lf/i/a/a/i1/m/d;Lf/i/a/a/i1/m/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/i1/m/d$c;->e:Lf/i/a/a/i1/m/d;

    invoke-direct {p0}, Lf/i/a/a/i1/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/m/d$c;->e:Lf/i/a/a/i1/m/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 2
    iput v2, p0, Lf/i/a/a/y0/a;->a:I

    .line 3
    iput-object v1, p0, Lf/i/a/a/i1/j;->c:Lf/i/a/a/i1/e;

    .line 4
    iget-object v0, v0, Lf/i/a/a/i1/m/d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_0
    throw v1
.end method
