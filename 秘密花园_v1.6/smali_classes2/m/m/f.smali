.class public final Lm/m/f;
.super Ljava/lang/RuntimeException;
.source "OnErrorThrowable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/m/f$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 5

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    .line 2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    const/16 v4, 0x19

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    if-lt v2, v4, :cond_1

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Stack too deep to get final cause"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    move v2, v3

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    instance-of v2, v1, Lm/m/f$a;

    if-eqz v2, :cond_3

    .line 6
    check-cast v1, Lm/m/f$a;

    .line 7
    iget-object v1, v1, Lm/m/f$a;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_3

    return-object p0

    .line 8
    :cond_3
    new-instance v1, Lm/m/f$a;

    invoke-direct {v1, p1}, Lm/m/f$a;-><init>(Ljava/lang/Object;)V

    .line 9
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    move-object v2, p0

    .line 10
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6

    add-int/lit8 v3, v0, 0x1

    if-lt v0, v4, :cond_4

    goto :goto_4

    .line 11
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_2

    .line 14
    :cond_6
    :goto_3
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_4
    return-object p0
.end method
