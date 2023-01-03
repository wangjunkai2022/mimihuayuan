.class public final Lf/d/a/l/a$e;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:[Ljava/io/File;

.field public final synthetic b:Lf/d/a/l/a;


# direct methods
.method public constructor <init>(Lf/d/a/l/a;Ljava/lang/String;J[Ljava/io/File;[JLf/d/a/l/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/d/a/l/a$e;->b:Lf/d/a/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p5, p0, Lf/d/a/l/a$e;->a:[Ljava/io/File;

    return-void
.end method
