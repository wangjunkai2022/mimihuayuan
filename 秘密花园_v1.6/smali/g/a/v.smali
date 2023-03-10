.class public final Lg/a/v;
.super Ljava/lang/Object;
.source "ProxyState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/v$b;,
        Lg/a/v$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lg/a/e0;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static h:Lg/a/v$b;


# instance fields
.field public a:Lg/a/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Lg/a/f1/p;

.field public d:Lio/realm/internal/OsObject;

.field public e:Lg/a/a;

.field public f:Z

.field public g:Lg/a/f1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/f1/k<",
            "Lio/realm/internal/OsObject$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/a/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/a/v$b;-><init>(Lg/a/v$a;)V

    sput-object v0, Lg/a/v;->h:Lg/a/v$b;

    return-void
.end method

.method public constructor <init>(Lg/a/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg/a/v;->b:Z

    .line 3
    new-instance v0, Lg/a/f1/k;

    invoke-direct {v0}, Lg/a/f1/k;-><init>()V

    iput-object v0, p0, Lg/a/v;->g:Lg/a/f1/k;

    .line 4
    iput-object p1, p0, Lg/a/v;->a:Lg/a/e0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/a/v;->e:Lg/a/a;

    iget-object v0, v0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/a/v;->c:Lg/a/f1/p;

    invoke-interface {v0}, Lg/a/f1/p;->v()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lg/a/v;->d:Lio/realm/internal/OsObject;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lio/realm/internal/OsObject;

    iget-object v1, p0, Lg/a/v;->e:Lg/a/a;

    iget-object v1, v1, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lg/a/v;->c:Lg/a/f1/p;

    check-cast v2, Lio/realm/internal/UncheckedRow;

    invoke-direct {v0, v1, v2}, Lio/realm/internal/OsObject;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;)V

    iput-object v0, p0, Lg/a/v;->d:Lio/realm/internal/OsObject;

    .line 4
    iget-object v1, p0, Lg/a/v;->g:Lg/a/f1/k;

    invoke-virtual {v0, v1}, Lio/realm/internal/OsObject;->setObserverPairs(Lg/a/f1/k;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lg/a/v;->g:Lg/a/f1/k;

    :cond_1
    :goto_0
    return-void
.end method
