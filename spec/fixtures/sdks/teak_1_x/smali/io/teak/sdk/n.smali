.class public Lio/teak/sdk/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/n$b;,
        Lio/teak/sdk/n$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/Thread;

.field private static final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lio/teak/sdk/n;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/Object;

.field private static e:Lio/teak/sdk/n$b;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lio/teak/sdk/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/teak/sdk/n;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lio/teak/sdk/n;->c:Ljava/util/concurrent/BlockingQueue;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/teak/sdk/n;->d:Ljava/lang/Object;

    .line 137
    new-instance v0, Lio/teak/sdk/n$b;

    invoke-direct {v0}, Lio/teak/sdk/n$b;-><init>()V

    sput-object v0, Lio/teak/sdk/n;->e:Lio/teak/sdk/n$b;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/teak/sdk/n;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lio/teak/sdk/n;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public static a(Lio/teak/sdk/n$a;)V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lio/teak/sdk/n;->e:Lio/teak/sdk/n$b;

    invoke-virtual {v0, p0}, Lio/teak/sdk/n$b;->a(Lio/teak/sdk/n$a;)V

    .line 67
    return-void
.end method

.method public static a(Lio/teak/sdk/n;)Z
    .locals 3
    .param p0    # Lio/teak/sdk/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    sget-object v1, Lio/teak/sdk/n;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lio/teak/sdk/n;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/n;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lio/teak/sdk/n$1;

    invoke-direct {v2}, Lio/teak/sdk/n$1;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    sput-object v0, Lio/teak/sdk/n;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-object v0, Lio/teak/sdk/n;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b()Lio/teak/sdk/n$b;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lio/teak/sdk/n;->e:Lio/teak/sdk/n$b;

    return-object v0
.end method

.method public static b(Lio/teak/sdk/n$a;)V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lio/teak/sdk/n;->e:Lio/teak/sdk/n$b;

    invoke-virtual {v0, p0}, Lio/teak/sdk/n$b;->b(Lio/teak/sdk/n$a;)V

    .line 71
    return-void
.end method
