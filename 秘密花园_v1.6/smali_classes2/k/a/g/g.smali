.class public Lk/a/g/g;
.super Ljava/lang/Object;
.source "QueryParser.java"


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;


# instance fields
.field public a:Lk/a/f/j;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/a/g/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, ","

    const-string v1, ">"

    const-string v2, "+"

    const-string v3, "~"

    const-string v4, " "

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/a/g/g;->d:[Ljava/lang/String;

    const-string v1, "="

    const-string v2, "!="

    const-string v3, "^="

    const-string v4, "$="

    const-string v5, "*="

    const-string v6, "~="

    .line 2
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/a/g/g;->e:[Ljava/lang/String;

    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk/a/g/g;->f:Ljava/util/regex/Pattern;

    const-string v0, "([+-])?(\\d+)"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk/a/g/g;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    .line 3
    invoke-static {p1}, Lj/b;->q(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lk/a/g/g;->b:Ljava/lang/String;

    .line 6
    new-instance v0, Lk/a/f/j;

    invoke-direct {v0, p1}, Lk/a/f/j;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    return-void
.end method

.method public static h(Ljava/lang/String;)Lk/a/g/d;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lk/a/g/g;

    invoke-direct {v0, p0}, Lk/a/g/g;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lk/a/g/g;->g()Lk/a/g/d;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Lk/a/g/h;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lk/a/g/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a(C)V
    .locals 10

    .line 1
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v0}, Lk/a/f/j;->f()Z

    .line 2
    invoke-static {}, Lk/a/d/a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    :goto_0
    iget-object v1, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v1}, Lk/a/f/j;->g()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    iget-object v1, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lk/a/f/j;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lk/a/f/j;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lk/a/f/j;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lk/a/f/j;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lk/a/g/g;->a:Lk/a/f/j;

    sget-object v2, Lk/a/g/g;->d:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lk/a/f/j;->j([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v1}, Lk/a/f/j;->c()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_3
    :goto_1
    invoke-static {v0}, Lk/a/d/a;->j(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lk/a/g/g;->h(Ljava/lang/String;)Lk/a/g/d;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lk/a/g/g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x2c

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_5

    .line 13
    iget-object v1, p0, Lk/a/g/g;->c:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/g/d;

    .line 14
    instance-of v5, v1, Lk/a/g/b$b;

    if-eqz v5, :cond_6

    if-eq p1, v2, :cond_6

    .line 15
    move-object v5, v1

    check-cast v5, Lk/a/g/b$b;

    .line 16
    iget v6, v5, Lk/a/g/b;->b:I

    if-lez v6, :cond_4

    iget-object v5, v5, Lk/a/g/b;->a:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/a/g/d;

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x1

    move-object v9, v5

    move-object v5, v1

    move-object v1, v9

    goto :goto_3

    .line 17
    :cond_5
    new-instance v1, Lk/a/g/b$a;

    iget-object v5, p0, Lk/a/g/g;->c:Ljava/util/List;

    invoke-direct {v1, v5}, Lk/a/g/b$a;-><init>(Ljava/util/Collection;)V

    :cond_6
    move-object v5, v1

    const/4 v6, 0x0

    .line 18
    :goto_3
    iget-object v7, p0, Lk/a/g/g;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/16 v7, 0x3e

    const/4 v8, 0x2

    if-ne p1, v7, :cond_7

    .line 19
    new-instance p1, Lk/a/g/b$a;

    new-array v2, v8, [Lk/a/g/d;

    aput-object v0, v2, v4

    new-instance v0, Lk/a/g/i$b;

    invoke-direct {v0, v1}, Lk/a/g/i$b;-><init>(Lk/a/g/d;)V

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Lk/a/g/b$a;-><init>([Lk/a/g/d;)V

    goto :goto_4

    :cond_7
    const/16 v7, 0x20

    if-ne p1, v7, :cond_8

    .line 20
    new-instance p1, Lk/a/g/b$a;

    new-array v2, v8, [Lk/a/g/d;

    aput-object v0, v2, v4

    new-instance v0, Lk/a/g/i$e;

    invoke-direct {v0, v1}, Lk/a/g/i$e;-><init>(Lk/a/g/d;)V

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Lk/a/g/b$a;-><init>([Lk/a/g/d;)V

    goto :goto_4

    :cond_8
    const/16 v7, 0x2b

    if-ne p1, v7, :cond_9

    .line 21
    new-instance p1, Lk/a/g/b$a;

    new-array v2, v8, [Lk/a/g/d;

    aput-object v0, v2, v4

    new-instance v0, Lk/a/g/i$c;

    invoke-direct {v0, v1}, Lk/a/g/i$c;-><init>(Lk/a/g/d;)V

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Lk/a/g/b$a;-><init>([Lk/a/g/d;)V

    goto :goto_4

    :cond_9
    const/16 v7, 0x7e

    if-ne p1, v7, :cond_a

    .line 22
    new-instance p1, Lk/a/g/b$a;

    new-array v2, v8, [Lk/a/g/d;

    aput-object v0, v2, v4

    new-instance v0, Lk/a/g/i$f;

    invoke-direct {v0, v1}, Lk/a/g/i$f;-><init>(Lk/a/g/d;)V

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Lk/a/g/b$a;-><init>([Lk/a/g/d;)V

    goto :goto_4

    :cond_a
    if-ne p1, v2, :cond_d

    .line 23
    instance-of p1, v1, Lk/a/g/b$b;

    if-eqz p1, :cond_b

    .line 24
    check-cast v1, Lk/a/g/b$b;

    .line 25
    invoke-virtual {v1, v0}, Lk/a/g/b$b;->c(Lk/a/g/d;)V

    move-object p1, v1

    goto :goto_4

    .line 26
    :cond_b
    new-instance p1, Lk/a/g/b$b;

    invoke-direct {p1}, Lk/a/g/b$b;-><init>()V

    .line 27
    invoke-virtual {p1, v1}, Lk/a/g/b$b;->c(Lk/a/g/d;)V

    .line 28
    invoke-virtual {p1, v0}, Lk/a/g/b$b;->c(Lk/a/g/d;)V

    :goto_4
    if-eqz v6, :cond_c

    .line 29
    move-object v0, v5

    check-cast v0, Lk/a/g/b$b;

    .line 30
    iget-object v1, v0, Lk/a/g/b;->a:Ljava/util/ArrayList;

    iget v0, v0, Lk/a/g/b;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_c
    move-object v5, p1

    .line 31
    :goto_5
    iget-object p1, p0, Lk/a/g/g;->c:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 32
    :cond_d
    new-instance v0, Lk/a/g/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown combinator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lk/a/g/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lk/a/f/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lk/a/d/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be numeric"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    if-eqz p1, :cond_0

    const-string v1, ":containsOwn"

    goto :goto_0

    :cond_0
    const-string v1, ":contains"

    :goto_0
    invoke-virtual {v0, v1}, Lk/a/f/j;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lk/a/f/j;->a(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk/a/f/j;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":contains(text) query must not be empty"

    .line 3
    invoke-static {v0, v1}, Lj/b;->r(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$m;

    invoke-direct {v1, v0}, Lk/a/g/d$m;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$n;

    invoke-direct {v1, v0}, Lk/a/g/d$n;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public final d(ZZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lk/a/f/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lk/a/g/g;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3
    sget-object v2, Lk/a/g/g;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "odd"

    .line 4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x2

    goto :goto_1

    :cond_0
    const-string v3, "even"

    .line 5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v6, ""

    const-string v7, "^\\+"

    if-eqz v3, :cond_4

    const/4 v0, 0x3

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_2
    const/4 v0, 0x4

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    :cond_3
    move v0, v4

    move v4, v5

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 10
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance p2, Lk/a/g/d$b0;

    invoke-direct {p2, v4, v0}, Lk/a/g/d$b0;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_5
    iget-object p1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance p2, Lk/a/g/d$c0;

    invoke-direct {p2, v4, v0}, Lk/a/g/d$c0;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance p2, Lk/a/g/d$a0;

    invoke-direct {p2, v4, v0}, Lk/a/g/d$a0;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_7
    iget-object p1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance p2, Lk/a/g/d$z;

    invoke-direct {p2, v4, v0}, Lk/a/g/d$z;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void

    .line 15
    :cond_8
    new-instance p1, Lk/a/g/h;

    new-array p2, v5, [Ljava/lang/Object;

    aput-object v0, p2, v4

    const-string v0, "Could not parse nth-index \'%s\': unexpected format"

    invoke-direct {p1, v0, p2}, Lk/a/g/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v0}, Lk/a/f/j;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lj/b;->q(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v2, Lk/a/g/d$p;

    invoke-direct {v2, v0}, Lk/a/g/d$p;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v0}, Lk/a/f/j;->e()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lj/b;->q(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v2, Lk/a/g/d$k;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lk/a/g/d$k;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 9
    :cond_1
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v0}, Lk/a/f/j;->k()Z

    move-result v0

    const-string v1, "*|"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_25

    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v0, v1}, Lk/a/f/j;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lk/a/f/j;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 11
    new-instance v0, Lk/a/f/j;

    iget-object v1, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const/16 v5, 0x5b

    const/16 v6, 0x5d

    invoke-virtual {v1, v5, v6}, Lk/a/f/j;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/a/f/j;-><init>(Ljava/lang/String;)V

    .line 12
    sget-object v1, Lk/a/g/g;->e:[Ljava/lang/String;

    .line 13
    iget v5, v0, Lk/a/f/j;->b:I

    .line 14
    :goto_0
    invoke-virtual {v0}, Lk/a/f/j;->g()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0, v1}, Lk/a/f/j;->j([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 15
    iget v6, v0, Lk/a/f/j;->b:I

    add-int/2addr v6, v4

    iput v6, v0, Lk/a/f/j;->b:I

    goto :goto_0

    .line 16
    :cond_3
    iget-object v1, v0, Lk/a/f/j;->a:Ljava/lang/String;

    iget v6, v0, Lk/a/f/j;->b:I

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Lj/b;->q(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lk/a/f/j;->f()Z

    .line 19
    invoke-virtual {v0}, Lk/a/f/j;->g()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v0, "^"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v2, Lk/a/g/d$d;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lk/a/g/d$d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 22
    :cond_4
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v2, Lk/a/g/d$b;

    invoke-direct {v2, v1}, Lk/a/g/d$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_5
    const-string v5, "="

    .line 23
    invoke-virtual {v0, v5}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 24
    iget-object v2, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v3, Lk/a/g/d$e;

    invoke-virtual {v0}, Lk/a/f/j;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lk/a/g/d$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6
    const-string v5, "!="

    .line 25
    invoke-virtual {v0, v5}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 26
    iget-object v2, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v3, Lk/a/g/d$i;

    invoke-virtual {v0}, Lk/a/f/j;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lk/a/g/d$i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_7
    const-string v5, "^="

    .line 27
    invoke-virtual {v0, v5}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 28
    iget-object v2, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v3, Lk/a/g/d$j;

    invoke-virtual {v0}, Lk/a/f/j;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lk/a/g/d$j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_8
    const-string v5, "$="

    .line 29
    invoke-virtual {v0, v5}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 30
    iget-object v2, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v3, Lk/a/g/d$g;

    invoke-virtual {v0}, Lk/a/f/j;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lk/a/g/d$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    const-string v5, "*="

    .line 31
    invoke-virtual {v0, v5}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 32
    iget-object v2, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v3, Lk/a/g/d$f;

    invoke-virtual {v0}, Lk/a/f/j;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lk/a/g/d$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_a
    const-string v5, "~="

    .line 33
    invoke-virtual {v0, v5}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 34
    iget-object v2, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v3, Lk/a/g/d$h;

    invoke-virtual {v0}, Lk/a/f/j;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lk/a/g/d$h;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 35
    :cond_b
    new-instance v1, Lk/a/g/h;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lk/a/g/g;->b:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {v0}, Lk/a/f/j;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v1, v0, v2}, Lk/a/g/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 36
    :cond_c
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$a;

    invoke-direct {v1}, Lk/a/g/d$a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 38
    :cond_d
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":lt("

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$t;

    invoke-virtual {p0}, Lk/a/g/g;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lk/a/g/d$t;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 40
    :cond_e
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":gt("

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 41
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$s;

    invoke-virtual {p0}, Lk/a/g/g;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lk/a/g/d$s;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 42
    :cond_f
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":eq("

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 43
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$q;

    invoke-virtual {p0}, Lk/a/g/g;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lk/a/g/d$q;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 44
    :cond_10
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":has("

    invoke-virtual {v0, v1}, Lk/a/f/j;->i(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x29

    const/16 v5, 0x28

    if-eqz v0, :cond_11

    .line 45
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v2, ":has"

    invoke-virtual {v0, v2}, Lk/a/f/j;->d(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v0, v5, v1}, Lk/a/f/j;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":has(el) subselect must not be empty"

    .line 47
    invoke-static {v0, v1}, Lj/b;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v2, Lk/a/g/i$a;

    invoke-static {v0}, Lk/a/g/g;->h(Ljava/lang/String;)Lk/a/g/d;

    move-result-object v0

    invoke-direct {v2, v0}, Lk/a/g/i$a;-><init>(Lk/a/g/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 49
    :cond_11
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v6, ":contains("

    invoke-virtual {v0, v6}, Lk/a/f/j;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 50
    invoke-virtual {p0, v3}, Lk/a/g/g;->c(Z)V

    goto/16 :goto_3

    .line 51
    :cond_12
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v6, ":containsOwn("

    invoke-virtual {v0, v6}, Lk/a/f/j;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 52
    invoke-virtual {p0, v4}, Lk/a/g/g;->c(Z)V

    goto/16 :goto_3

    .line 53
    :cond_13
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v6, ":containsData("

    invoke-virtual {v0, v6}, Lk/a/f/j;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 54
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v2, ":containsData"

    invoke-virtual {v0, v2}, Lk/a/f/j;->d(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v0, v5, v1}, Lk/a/f/j;->a(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk/a/f/j;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":containsData(text) query must not be empty"

    .line 56
    invoke-static {v0, v1}, Lj/b;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v2, Lk/a/g/d$l;

    invoke-direct {v2, v0}, Lk/a/g/d$l;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 58
    :cond_14
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v6, ":matches("

    invoke-virtual {v0, v6}, Lk/a/f/j;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 59
    invoke-virtual {p0, v3}, Lk/a/g/g;->f(Z)V

    goto/16 :goto_3

    .line 60
    :cond_15
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v6, ":matchesOwn("

    invoke-virtual {v0, v6}, Lk/a/f/j;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 61
    invoke-virtual {p0, v4}, Lk/a/g/g;->f(Z)V

    goto/16 :goto_3

    .line 62
    :cond_16
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v6, ":not("

    invoke-virtual {v0, v6}, Lk/a/f/j;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 63
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v2, ":not"

    invoke-virtual {v0, v2}, Lk/a/f/j;->d(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v0, v5, v1}, Lk/a/f/j;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":not(selector) subselect must not be empty"

    .line 65
    invoke-static {v0, v1}, Lj/b;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v2, Lk/a/g/i$d;

    invoke-static {v0}, Lk/a/g/g;->h(Ljava/lang/String;)Lk/a/g/d;

    move-result-object v0

    invoke-direct {v2, v0}, Lk/a/g/i$d;-><init>(Lk/a/g/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 67
    :cond_17
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":nth-child("

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 68
    invoke-virtual {p0, v3, v3}, Lk/a/g/g;->d(ZZ)V

    goto/16 :goto_3

    .line 69
    :cond_18
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":nth-last-child("

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 70
    invoke-virtual {p0, v4, v3}, Lk/a/g/g;->d(ZZ)V

    goto/16 :goto_3

    .line 71
    :cond_19
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":nth-of-type("

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 72
    invoke-virtual {p0, v3, v4}, Lk/a/g/g;->d(ZZ)V

    goto/16 :goto_3

    .line 73
    :cond_1a
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":nth-last-of-type("

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 74
    invoke-virtual {p0, v4, v4}, Lk/a/g/g;->d(ZZ)V

    goto/16 :goto_3

    .line 75
    :cond_1b
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":first-child"

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 76
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$v;

    invoke-direct {v1}, Lk/a/g/d$v;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 77
    :cond_1c
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":last-child"

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 78
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$x;

    invoke-direct {v1}, Lk/a/g/d$x;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 79
    :cond_1d
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":first-of-type"

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 80
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$w;

    invoke-direct {v1}, Lk/a/g/d$w;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 81
    :cond_1e
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":last-of-type"

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 82
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$y;

    invoke-direct {v1}, Lk/a/g/d$y;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 83
    :cond_1f
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":only-child"

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 84
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$d0;

    invoke-direct {v1}, Lk/a/g/d$d0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 85
    :cond_20
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":only-of-type"

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 86
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$e0;

    invoke-direct {v1}, Lk/a/g/d$e0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 87
    :cond_21
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":empty"

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 88
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$u;

    invoke-direct {v1}, Lk/a/g/d$u;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 89
    :cond_22
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":root"

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 90
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$f0;

    invoke-direct {v1}, Lk/a/g/d$f0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 91
    :cond_23
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const-string v1, ":matchText"

    invoke-virtual {v0, v1}, Lk/a/f/j;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 92
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$g0;

    invoke-direct {v1}, Lk/a/g/d$g0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 93
    :cond_24
    new-instance v0, Lk/a/g/h;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lk/a/g/g;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v2}, Lk/a/f/j;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, v2, v1}, Lk/a/g/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 94
    :cond_25
    :goto_1
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    .line 95
    iget v5, v0, Lk/a/f/j;->b:I

    .line 96
    :goto_2
    invoke-virtual {v0}, Lk/a/f/j;->g()Z

    move-result v6

    const-string v7, "|"

    if-nez v6, :cond_27

    invoke-virtual {v0}, Lk/a/f/j;->k()Z

    move-result v6

    if-nez v6, :cond_26

    const-string v6, "_"

    const-string v8, "-"

    filled-new-array {v1, v7, v6, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lk/a/f/j;->j([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 97
    :cond_26
    iget v6, v0, Lk/a/f/j;->b:I

    add-int/2addr v6, v4

    iput v6, v0, Lk/a/f/j;->b:I

    goto :goto_2

    .line 98
    :cond_27
    iget-object v6, v0, Lk/a/f/j;->a:Ljava/lang/String;

    iget v0, v0, Lk/a/f/j;->b:I

    invoke-virtual {v6, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lj/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lj/b;->q(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ":"

    if-eqz v5, :cond_28

    .line 102
    iget-object v5, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v7, Lk/a/g/b$b;

    new-array v2, v2, [Lk/a/g/d;

    new-instance v8, Lk/a/g/d$j0;

    invoke-direct {v8, v0}, Lk/a/g/d$j0;-><init>(Ljava/lang/String;)V

    aput-object v8, v2, v3

    new-instance v3, Lk/a/g/d$k0;

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lk/a/g/d$k0;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v4

    invoke-direct {v7, v2}, Lk/a/g/b$b;-><init>([Lk/a/g/d;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 103
    :cond_28
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 104
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_29
    iget-object v1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v2, Lk/a/g/d$j0;

    invoke-direct {v2, v0}, Lk/a/g/d$j0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method public final f(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    if-eqz p1, :cond_0

    const-string v1, ":matchesOwn"

    goto :goto_0

    :cond_0
    const-string v1, ":matches"

    :goto_0
    invoke-virtual {v0, v1}, Lk/a/f/j;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lk/a/f/j;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":matches(regex) query must not be empty"

    .line 3
    invoke-static {v0, v1}, Lj/b;->r(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$i0;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v1, v0}, Lk/a/g/d$i0;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/d$h0;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v1, v0}, Lk/a/g/d$h0;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public g()Lk/a/g/d;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v0}, Lk/a/f/j;->f()Z

    .line 2
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    sget-object v1, Lk/a/g/g;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lk/a/f/j;->j([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    new-instance v1, Lk/a/g/i$g;

    invoke-direct {v1}, Lk/a/g/i$g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v0}, Lk/a/f/j;->c()C

    move-result v0

    invoke-virtual {p0, v0}, Lk/a/g/g;->a(C)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lk/a/g/g;->e()V

    .line 6
    :goto_0
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v0}, Lk/a/f/j;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v0}, Lk/a/f/j;->f()Z

    move-result v0

    .line 8
    iget-object v1, p0, Lk/a/g/g;->a:Lk/a/f/j;

    sget-object v2, Lk/a/g/g;->d:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lk/a/f/j;->j([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v0, p0, Lk/a/g/g;->a:Lk/a/f/j;

    invoke-virtual {v0}, Lk/a/f/j;->c()C

    move-result v0

    invoke-virtual {p0, v0}, Lk/a/g/g;->a(C)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/16 v0, 0x20

    .line 10
    invoke-virtual {p0, v0}, Lk/a/g/g;->a(C)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lk/a/g/g;->e()V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 13
    iget-object v0, p0, Lk/a/g/g;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/g/d;

    return-object v0

    .line 14
    :cond_4
    new-instance v0, Lk/a/g/b$a;

    iget-object v1, p0, Lk/a/g/g;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lk/a/g/b$a;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
