import UIKit

public enum PagingCellSize {
  case FixedWidth(width: CGFloat)
  case SizeToFit(minWidth: CGFloat)
}

public enum PagingIndicatorOptions {
  case Hidden
  case Visible(height: CGFloat, insets: UIEdgeInsets)
}

public protocol PagingTheme {
  var font: UIFont { get }
  var textColor: UIColor { get }
  var selectedTextColor: UIColor { get }
  var headerBackgroundColor: UIColor { get }
  var indicatorBackgroundColor: UIColor { get }
}

public protocol PagingOptions {
  var headerHeight: CGFloat { get }
  var cellSize: PagingCellSize { get }
  var theme: PagingTheme { get }
  var indicatorOptions: PagingIndicatorOptions { get }
}

struct DefaultPagingTheme: PagingTheme {
  let font = UIFont.systemFontOfSize(15, weight: UIFontWeightMedium)
  let textColor = UIColor.blackColor()
  let selectedTextColor = UIColor(red: 3/255, green: 125/255, blue: 233/255, alpha: 1)
  let headerBackgroundColor = UIColor.whiteColor()
  let indicatorBackgroundColor = UIColor(red: 3/255, green: 125/255, blue: 233/255, alpha: 1)
}

private let insets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)

struct DefaultPagingOptions: PagingOptions {
  let headerHeight: CGFloat = 40
  let cellSize: PagingCellSize = .SizeToFit(minWidth: 150)
  let theme: PagingTheme = DefaultPagingTheme()
  let indicatorOptions: PagingIndicatorOptions = .Visible(height: 4, insets: insets)
}
