.class public final Lf/i/a/a/h1/u0/t/e$a;
.super Ljava/lang/Object;
.source "HlsMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/u0/t/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lf/i/a/a/b0;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lf/i/a/a/b0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/u0/t/e$a;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/u0/t/e$a;->b:Lf/i/a/a/b0;

    .line 4
    iput-object p4, p0, Lf/i/a/a/h1/u0/t/e$a;->c:Ljava/lang/String;

    return-void
.end method
