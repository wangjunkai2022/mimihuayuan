.class public Lg/a/u$b;
.super Lio/realm/internal/OsResults$b;
.source "OrderedRealmCollectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/OsResults$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lg/a/u;


# direct methods
.method public constructor <init>(Lg/a/u;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a/u$b;->c:Lg/a/u;

    .line 2
    iget-object p1, p1, Lg/a/u;->d:Lio/realm/internal/OsResults;

    invoke-direct {p0, p1, p2}, Lio/realm/internal/OsResults$b;-><init>(Lio/realm/internal/OsResults;I)V

    return-void
.end method


# virtual methods
.method public b(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/UncheckedRow;",
            ")TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/a/u$b;->c:Lg/a/u;

    iget-object v1, v0, Lg/a/u;->a:Lg/a/a;

    iget-object v2, v0, Lg/a/u;->b:Ljava/lang/Class;

    iget-object v0, v0, Lg/a/u;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p1}, Lg/a/a;->F(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lg/a/e0;

    move-result-object p1

    return-object p1
.end method
