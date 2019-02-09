.class final Lio/teak/sdk/Teak$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/Teak;->identifyUser(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lio/teak/sdk/Teak$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/teak/sdk/Teak$2;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 240
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget-object v2, p0, Lio/teak/sdk/Teak$2;->a:Ljava/lang/String;

    iget-object v0, p0, Lio/teak/sdk/Teak$2;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/teak/sdk/Teak$2;->b:[Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lio/teak/sdk/TeakInstance;->identifyUser(Ljava/lang/String;[Ljava/lang/String;)V

    .line 241
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method
