.class public Lio/teak/sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/o$b;,
        Lio/teak/sdk/o$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/Thread;

.field private static final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lio/teak/sdk/o;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/Object;

.field private static e:Lio/teak/sdk/o$b;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lio/teak/sdk/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/teak/sdk/o;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lio/teak/sdk/o;->c:Ljava/util/concurrent/BlockingQueue;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/teak/sdk/o;->d:Ljava/lang/Object;

    .line 123
    new-instance v0, Lio/teak/sdk/o$b;

    invoke-direct {v0}, Lio/teak/sdk/o$b;-><init>()V

    sput-object v0, Lio/teak/sdk/o;->e:Lio/teak/sdk/o$b;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/teak/sdk/o;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lio/teak/sdk/o;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public static a(Lio/teak/sdk/o$a;)V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lio/teak/sdk/o;->e:Lio/teak/sdk/o$b;

    invoke-virtual {v0, p0}, Lio/teak/sdk/o$b;->a(Lio/teak/sdk/o$a;)V

    .line 53
    return-void
.end method

.method public static a(Lio/teak/sdk/o;)Z
    .locals 3
    .param p0    # Lio/teak/sdk/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    sget-object v1, Lio/teak/sdk/o;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lio/teak/sdk/o;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/o;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lio/teak/sdk/o$1;

    invoke-direct {v2}, Lio/teak/sdk/o$1;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 34
    sput-object v0, Lio/teak/sdk/o;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 36
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    sget-object v0, Lio/teak/sdk/o;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b()Lio/teak/sdk/o$b;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lio/teak/sdk/o;->e:Lio/teak/sdk/o$b;

    return-object v0
.end method

.method public static b(Lio/teak/sdk/o$a;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lio/teak/sdk/o;->e:Lio/teak/sdk/o$b;

    invoke-virtual {v0, p0}, Lio/teak/sdk/o$b;->b(Lio/teak/sdk/o$a;)V

    .line 57
    return-void
.end method
