.class final Lio/teak/sdk/f/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/teak/sdk/n;Lio/teak/sdk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Lio/teak/sdk/f/a;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/teak/sdk/f/a$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1120
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 117
    return-object v0
.end method
