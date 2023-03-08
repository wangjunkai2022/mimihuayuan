.class public final Lg/a/h1$a;
.super Lg/a/f1/c;
.source "io_realm_sync_permissions_ClassPermissionsRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public e:J

.field public f:J

.field public g:J


# virtual methods
.method public final b(Lg/a/f1/c;Lg/a/f1/c;)V
    .locals 2

    .line 1
    check-cast p1, Lg/a/h1$a;

    .line 2
    check-cast p2, Lg/a/h1$a;

    .line 3
    iget-wide v0, p1, Lg/a/h1$a;->f:J

    iput-wide v0, p2, Lg/a/h1$a;->f:J

    .line 4
    iget-wide v0, p1, Lg/a/h1$a;->g:J

    iput-wide v0, p2, Lg/a/h1$a;->g:J

    .line 5
    iget-wide v0, p1, Lg/a/h1$a;->e:J

    iput-wide v0, p2, Lg/a/h1$a;->e:J

    return-void
.end method
