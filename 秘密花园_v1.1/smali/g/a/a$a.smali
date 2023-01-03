.class public Lg/a/a$a;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/a/a;


# direct methods
.method public constructor <init>(Lg/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a/a$a;->a:Lg/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSchemaChanged()V
    .locals 7

    .line 1
    iget-object v0, p0, Lg/a/a$a;->a:Lg/a/a;

    invoke-virtual {v0}, Lg/a/a;->G()Lg/a/k0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lg/a/k0;->f:Lg/a/f1/b;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lg/a/f1/b;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    iget-object v4, v1, Lg/a/f1/b;->c:Lg/a/f1/o;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    iget-object v6, v1, Lg/a/f1/b;->d:Lio/realm/internal/OsSchemaInfo;

    invoke-virtual {v4, v5, v6}, Lg/a/f1/o;->c(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lg/a/f1/c;

    move-result-object v4

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/a/f1/c;

    invoke-virtual {v3, v4}, Lg/a/f1/c;->c(Lg/a/f1/c;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Lg/a/k0;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 7
    iget-object v1, v0, Lg/a/k0;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 8
    iget-object v1, v0, Lg/a/k0;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 9
    iget-object v0, v0, Lg/a/k0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method
