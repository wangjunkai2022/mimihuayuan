.class public final Ll/e0;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/e0$a;
    }
.end annotation


# static fields
.field public static final l:[C

.field public static final m:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Li/x;

.field public c:Ljava/lang/String;

.field public d:Li/x$a;

.field public final e:Li/e0$a;

.field public final f:Li/w$a;

.field public g:Li/z;

.field public final h:Z

.field public i:Li/a0$a;

.field public j:Li/u$a;

.field public k:Li/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ll/e0;->l:[C

    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ll/e0;->m:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Li/x;Ljava/lang/String;Li/w;Li/z;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/e0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ll/e0;->b:Li/x;

    .line 4
    iput-object p3, p0, Ll/e0;->c:Ljava/lang/String;

    .line 5
    new-instance p1, Li/e0$a;

    invoke-direct {p1}, Li/e0$a;-><init>()V

    iput-object p1, p0, Ll/e0;->e:Li/e0$a;

    .line 6
    iput-object p5, p0, Ll/e0;->g:Li/z;

    .line 7
    iput-boolean p6, p0, Ll/e0;->h:Z

    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p4}, Li/w;->d()Li/w$a;

    move-result-object p1

    iput-object p1, p0, Ll/e0;->f:Li/w$a;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Li/w$a;

    invoke-direct {p1}, Li/w$a;-><init>()V

    iput-object p1, p0, Ll/e0;->f:Li/w$a;

    :goto_0
    if-eqz p7, :cond_1

    .line 10
    new-instance p1, Li/u$a;

    invoke-direct {p1}, Li/u$a;-><init>()V

    iput-object p1, p0, Ll/e0;->j:Li/u$a;

    goto :goto_1

    :cond_1
    if-eqz p8, :cond_2

    .line 11
    new-instance p1, Li/a0$a;

    invoke-direct {p1}, Li/a0$a;-><init>()V

    iput-object p1, p0, Ll/e0;->i:Li/a0$a;

    .line 12
    sget-object p2, Li/a0;->h:Li/z;

    invoke-virtual {p1, p2}, Li/a0$a;->d(Li/z;)Li/a0$a;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    if-eqz p3, :cond_1

    .line 1
    iget-object v12, v0, Ll/e0;->j:Li/u$a;

    if-eqz v2, :cond_0

    .line 2
    iget-object v13, v12, Li/u$a;->a:Ljava/util/List;

    sget-object v1, Li/x;->l:Li/x$b;

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    .line 3
    iget-object v10, v12, Li/u$a;->c:Ljava/nio/charset/Charset;

    const/16 v24, 0x53

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v11, 0x53

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object/from16 v2, p1

    .line 4
    invoke-static/range {v1 .. v11}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, v12, Li/u$a;->b:Ljava/util/List;

    sget-object v14, Li/x;->l:Li/x$b;

    .line 6
    iget-object v2, v12, Li/u$a;->c:Ljava/nio/charset/Charset;

    const-string v18, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object/from16 v15, p2

    move-object/from16 v23, v2

    .line 7
    invoke-static/range {v14 .. v24}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "name"

    .line 8
    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 9
    :cond_1
    iget-object v1, v0, Ll/e0;->j:Li/u$a;

    move-object/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Li/u$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/u$a;

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Content-Type"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p2}, Li/z;->b(Ljava/lang/String;)Li/z;

    move-result-object p1

    iput-object p1, p0, Ll/e0;->g:Li/z;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed content type: "

    invoke-static {v1, p2}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_0
    iget-object v0, p0, Ll/e0;->f:Li/w$a;

    invoke-virtual {v0, p1, p2}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    :goto_0
    return-void
.end method

.method public c(Li/w;Li/g0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ll/e0;->i:Li/a0$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_6

    if-eqz p1, :cond_0

    const-string v2, "Content-Type"

    .line 2
    invoke-virtual {p1, v2}, Li/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    if-eqz p1, :cond_2

    const-string v2, "Content-Length"

    .line 3
    invoke-virtual {p1, v2}, Li/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 4
    new-instance v2, Li/a0$c;

    invoke-direct {v2, p1, p2, v1}, Li/a0$c;-><init>(Li/w;Li/g0;Lh/o/c/f;)V

    .line 5
    invoke-virtual {v0, v2}, Li/a0$a;->b(Li/a0$c;)Li/a0$a;

    return-void

    .line 6
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Length"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Type"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string p1, "body"

    .line 8
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_7
    throw v1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p2

    .line 1
    iget-object v1, v0, Ll/e0;->c:Ljava/lang/String;

    const/4 v13, 0x0

    if-eqz v1, :cond_1

    .line 2
    iget-object v3, v0, Ll/e0;->b:Li/x;

    invoke-virtual {v3, v1}, Li/x;->h(Ljava/lang/String;)Li/x$a;

    move-result-object v1

    iput-object v1, v0, Ll/e0;->d:Li/x$a;

    if-eqz v1, :cond_0

    .line 3
    iput-object v13, v0, Ll/e0;->c:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Malformed URL. Base: "

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Ll/e0;->b:Li/x;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Relative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ll/e0;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    .line 5
    iget-object v14, v0, Ll/e0;->d:Li/x$a;

    if-eqz v2, :cond_6

    .line 6
    iget-object v1, v14, Li/x$a;->g:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v14, Li/x$a;->g:Ljava/util/List;

    .line 7
    :cond_2
    iget-object v15, v14, Li/x$a;->g:Ljava/util/List;

    if-eqz v15, :cond_5

    sget-object v1, Li/x;->l:Li/x$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd3

    const-string v5, " \"\'<>#&="

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v11}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v14, v14, Li/x$a;->g:Ljava/util/List;

    if-eqz v14, :cond_4

    if-eqz v12, :cond_3

    sget-object v1, Li/x;->l:Li/x$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd3

    const-string v5, " \"\'<>#&="

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v11}, Li/x$b;->a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v13

    :cond_3
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {}, Lh/o/c/g;->e()V

    throw v13

    .line 9
    :cond_5
    invoke-static {}, Lh/o/c/g;->e()V

    throw v13

    :cond_6
    const-string v1, "encodedName"

    .line 10
    invoke-static {v1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v13

    .line 11
    :cond_7
    iget-object v1, v0, Ll/e0;->d:Li/x$a;

    invoke-virtual {v1, v2, v12}, Li/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/x$a;

    :goto_1
    return-void
.end method
