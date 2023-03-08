.class public interface abstract Li/c;
.super Ljava/lang/Object;
.source "Authenticator.kt"


# static fields
.field public static final a:Li/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/b$a;

    invoke-direct {v0}, Li/b$a;-><init>()V

    sput-object v0, Li/c;->a:Li/c;

    return-void
.end method


# virtual methods
.method public abstract a(Li/k0;Li/h0;)Li/e0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
