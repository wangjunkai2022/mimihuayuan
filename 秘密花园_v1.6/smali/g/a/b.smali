.class public Lg/a/b;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Lio/realm/internal/OsSharedRealm$InitializationCallback;


# instance fields
.field public final synthetic a:Lg/a/x$a;

.field public final synthetic b:Lg/a/a;


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/x$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a/b;->b:Lg/a/a;

    iput-object p2, p0, Lg/a/b;->a:Lg/a/x$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(Lio/realm/internal/OsSharedRealm;)V
    .locals 1

    .line 1
    new-instance v0, Lg/a/x;

    invoke-direct {v0, p1}, Lg/a/x;-><init>(Lio/realm/internal/OsSharedRealm;)V

    .line 2
    iget-object p1, p0, Lg/a/b;->a:Lg/a/x$a;

    invoke-interface {p1, v0}, Lg/a/x$a;->a(Lg/a/x;)V

    return-void
.end method
