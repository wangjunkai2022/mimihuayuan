.class public Lg/a/w$a$a;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/a/w$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/a/w$a;


# direct methods
.method public constructor <init>(Lg/a/w$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a/w$a$a;->a:Lg/a/w$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/a/w$a$a;->a:Lg/a/w$a;

    iget-object v0, v0, Lg/a/w$a;->b:Lg/a/w;

    iget-object v0, v0, Lg/a/w;->d:Lg/a/x$a$b;

    invoke-interface {v0}, Lg/a/x$a$b;->a()V

    return-void
.end method
