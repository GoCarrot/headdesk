.class final Lio/teak/sdk/Teak$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/Teak;->setNumericAttribute(Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:D


# direct methods
.method constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lio/teak/sdk/Teak$3;->a:Ljava/lang/String;

    iput-wide p2, p0, Lio/teak/sdk/Teak$3;->b:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 290
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    iget-object v1, p0, Lio/teak/sdk/Teak$3;->a:Ljava/lang/String;

    iget-wide v2, p0, Lio/teak/sdk/Teak$3;->b:D

    .line 1179
    new-instance v4, Lio/teak/sdk/o$3;

    invoke-direct {v4, v0, v1, v2, v3}, Lio/teak/sdk/o$3;-><init>(Lio/teak/sdk/o;Ljava/lang/String;D)V

    invoke-static {v4}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$a;)V

    .line 291
    return-void
.end method
