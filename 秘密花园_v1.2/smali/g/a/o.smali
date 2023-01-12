.class public abstract Lg/a/o;
.super Ljava/lang/Object;
.source "RealmList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;

.field public final b:Lio/realm/internal/OsList;

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/a/o;->a:Lg/a/a;

    .line 3
    iput-object p3, p0, Lg/a/o;->c:Ljava/lang/Class;

    .line 4
    iput-object p2, p0, Lg/a/o;->b:Lio/realm/internal/OsList;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract b(Ljava/lang/Object;)V
.end method

.method public abstract c(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public d(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lg/a/o;->b:Lio/realm/internal/OsList;

    int-to-long v1, p1

    .line 2
    iget-wide v3, v0, Lio/realm/internal/OsList;->a:J

    invoke-static {v3, v4, v1, v2}, Lio/realm/internal/OsList;->nativeInsertNull(JJ)V

    return-void
.end method

.method public abstract e(ILjava/lang/Object;)V
.end method

.method public f(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lg/a/o;->b:Lio/realm/internal/OsList;

    int-to-long v1, p1

    .line 2
    iget-wide v3, v0, Lio/realm/internal/OsList;->a:J

    invoke-static {v3, v4, v1, v2}, Lio/realm/internal/OsList;->nativeSetNull(JJ)V

    return-void
.end method

.method public abstract g(ILjava/lang/Object;)V
.end method
