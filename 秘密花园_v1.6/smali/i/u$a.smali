.class public final Li/u$a;
.super Ljava/lang/Object;
.source "FormBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li/u$a;->c:Ljava/nio/charset/Charset;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/u$a;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/u$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Li/u$a;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Li/u$a;->a:Ljava/util/List;

    sget-object v1, Li/x;->l:Li/x$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2
    iget-object v10, p0, Li/u$a;->c:Ljava/nio/charset/Charset;

    const/16 v11, 0x5b

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v2, p1

    .line 3
    invoke-static/range {v1 .. v11}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Li/u$a;->b:Ljava/util/List;

    sget-object v0, Li/x;->l:Li/x$b;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5
    iget-object v9, p0, Li/u$a;->c:Ljava/nio/charset/Charset;

    const/16 v10, 0x5b

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p2

    .line 6
    invoke-static/range {v0 .. v10}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    const-string p1, "value"

    .line 7
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "name"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Li/u;
    .locals 3

    .line 1
    new-instance v0, Li/u;

    iget-object v1, p0, Li/u$a;->a:Ljava/util/List;

    iget-object v2, p0, Li/u$a;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Li/u;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
