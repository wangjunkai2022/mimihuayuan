.class public final Ll/w;
.super Ljava/lang/Object;
.source "KotlinExtensions.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lh/m/a;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lh/m/a;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Ll/w;->a:Lh/m/a;

    iput-object p2, p0, Ll/w;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/w;->a:Lh/m/a;

    invoke-static {v0}, Lc/a/a/b/g/h;->h0(Lh/m/a;)Lh/m/a;

    move-result-object v0

    iget-object v1, p0, Ll/w;->b:Ljava/lang/Exception;

    invoke-static {v1}, Lc/a/a/b/g/h;->B(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lh/m/a;->a(Ljava/lang/Object;)V

    return-void
.end method
