.class public Lg/a/f1/h;
.super Ljava/lang/Object;
.source "NativeContext.java"


# static fields
.field public static final a:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lg/a/f1/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Thread;

.field public static final c:Lg/a/f1/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lg/a/f1/h;->a:Ljava/lang/ref/ReferenceQueue;

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lg/a/f1/e;

    sget-object v2, Lg/a/f1/h;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2}, Lg/a/f1/e;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lg/a/f1/h;->b:Ljava/lang/Thread;

    .line 3
    new-instance v0, Lg/a/f1/h;

    invoke-direct {v0}, Lg/a/f1/h;-><init>()V

    sput-object v0, Lg/a/f1/h;->c:Lg/a/f1/h;

    .line 4
    sget-object v0, Lg/a/f1/h;->b:Ljava/lang/Thread;

    const-string v1, "RealmFinalizingDaemon"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lg/a/f1/h;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/a/f1/i;)V
    .locals 2

    .line 1
    new-instance v0, Lio/realm/internal/NativeObjectReference;

    sget-object v1, Lg/a/f1/h;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/internal/NativeObjectReference;-><init>(Lg/a/f1/h;Lg/a/f1/i;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
